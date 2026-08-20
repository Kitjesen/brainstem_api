import 'dart:io';

class Version implements Comparable<Version> {
  final int major;
  final int minor;
  final int patch;

  Version(this.major, this.minor, this.patch);

  factory Version.parse(String s) {
    final parts = s.split('.');
    if (parts.length != 3) throw FormatException('Invalid version: $s');
    return Version(
      int.parse(parts[0]),
      int.parse(parts[1]),
      int.parse(parts[2]),
    );
  }

  @override
  int compareTo(Version other) {
    if (major != other.major) return major.compareTo(other.major);
    if (minor != other.minor) return minor.compareTo(other.minor);
    return patch.compareTo(other.patch);
  }

  Version operator +(dynamic other) => switch (other) {
    int n => Version(major, minor, patch + n),
    (int y, int z) => Version(major, minor + y, patch + z),
    (int x, int y, int z) => Version(major + x, minor + y, patch + z),
    Version v => Version(major + v.major, minor + v.minor, patch + v.patch),
    _ => throw ArgumentError('Can only add 1, 2, or 3 to Version'),
  };
  @override
  String toString() => '$major.$minor.$patch';

  static final RegExp pattern = RegExp(r'^\d+\.\d+\.\d+$');
  static bool isValid(String s) => pattern.hasMatch(s);
}

Version checkRepositoryVersion(Directory rootDir) {
  final version = File('${rootDir.path}/VERSION').readAsStringSync().trim();
  final pubspecVer = pubspecVersion(
    File('${rootDir.path}/dart/pubspec.yaml').readAsStringSync(),
  )?.toString();
  final pyprojectVer = pyprojectVersion(
    File('${rootDir.path}/python/pyproject.toml').readAsStringSync(),
  )?.toString();
  if (!Version.isValid(version) ||
      pubspecVer != version ||
      pyprojectVer != version) {
    throw StateError(
      'Repository versions differ: '
      'VERSION=$version, dart/pubspec.yaml=$pubspecVer, '
      'python/pyproject.toml=$pyprojectVer',
    );
  }
  return Version.parse(version);
}

void updateRepositoryVersion(Directory rootDir, Version version) {
  final pubspecFile = File('${rootDir.path}/dart/pubspec.yaml');
  final pyprojectFile = File('${rootDir.path}/python/pyproject.toml');
  final pubspecContent = pubspecFile.readAsStringSync();
  final pyprojectContent = pyprojectFile.readAsStringSync();
  if (pubspecVersion(pubspecContent) == null ||
      pyprojectVersion(pyprojectContent) == null) {
    throw StateError('Repository version field is missing');
  }

  File('${rootDir.path}/VERSION').writeAsStringSync('$version\n');
  pubspecFile.writeAsStringSync(
    pubspecContent.replaceFirst(
      RegExp(r'version:\s*[^\n]+'),
      'version: $version',
    ),
  );
  pyprojectFile.writeAsStringSync(
    pyprojectContent.replaceFirst(
      RegExp(r'version\s*=\s*"[^"]+"'),
      'version = "$version"',
    ),
  );
  checkRepositoryVersion(rootDir);
}

Future<void> main(List<String> args) async {
  // Determine root directory
  final rootDir = args.isNotEmpty
      ? Directory(args[0])
      : File(Platform.script.toFilePath()).parent.parent;

  final pythonDir = Directory('${rootDir.path}/python');

  print('Root directory: ${rootDir.path}');
  final currentVersion = checkRepositoryVersion(rootDir);
  print('Version check passed: $currentVersion');

  // Expand brainstem_api/*.proto manually
  final protoDir = Directory('${rootDir.path}/brainstem_api');
  final protoFiles = protoDir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.proto'))
      .map((f) => 'brainstem_api/${f.uri.pathSegments.last}')
      .toList();
  if (protoFiles.isEmpty) {
    print('No .proto files found in brainstem_api/.');
    exit(1);
  }

  // 1. Compile protos for Dart and Python
  print('Compiling protos...');
  await _run('protoc', [
    '--dart_out=grpc:dart/lib/',
    '-I',
    '.',
    ...protoFiles,
  ], cwd: rootDir);
  await _run('poetry', [
    'run',
    'python',
    '-m',
    'grpc_tools.protoc',
    '-I',
    '..',
    '--python_out=.',
    '--pyi_out=.',
    '--grpc_python_out=.',
    ...protoFiles.map((f) => '../$f'),
  ], cwd: pythonDir);
  print('Protos compiled.');

  // 2. Prompt for new version and update files
  late final Version newVersion;
  final suggestedVersion = currentVersion + 1;
  while (true) {
    stdout.write(
      '\nCurrent version: $currentVersion\nEnter the new version (e.g., $suggestedVersion): ',
    );
    final input = stdin.readLineSync();
    if (input == null || input.isEmpty) {
      print('No version entered. Exiting.');
      exit(1);
    }
    if (!Version.isValid(input)) {
      print('Version must be in format x.y.z (e.g., $suggestedVersion)');
      continue;
    }
    final candidate = Version.parse(input);
    if (candidate.compareTo(currentVersion) <= 0) {
      print('Version must be greater than current version ($currentVersion)');
      continue;
    }
    newVersion = candidate;
    break;
  }
  final version = newVersion.toString();

  updateRepositoryVersion(rootDir, newVersion);
  print('Updated VERSION, pubspec.yaml, and pyproject.toml to $version.');

  // 3. Create git tag and push
  final tag = 'v$version';
  await _run('git', ['add', '.'], cwd: rootDir);
  stdout.write('Enter commit message for version $version: ');
  final commitMessage = stdin.readLineSync() ?? '';
  await _run(
    'git',
    ['commit', '-m', '$version: $commitMessage'],
    allowFail: true,
    cwd: rootDir,
  );
  await _run('git', ['tag', tag], cwd: rootDir);
  await _run('git', ['push', 'origin', 'main', '--tags'], cwd: rootDir);

  print('\nPublish steps complete.');
}

Future<void> _run(
  String cmd,
  List<String> args, {
  bool allowFail = false,
  Directory? cwd,
}) async {
  final result = await Process.run(cmd, args, workingDirectory: cwd?.path);
  stdout.write(result.stdout);
  stderr.write(result.stderr);
  if (result.exitCode != 0 && !allowFail) {
    print('Command failed: $cmd ${args.join(' ')}');
    exit(result.exitCode);
  }
}

Version? pubspecVersion(String content) {
  final match = RegExp(r'version:\s*([\d\.]+)').firstMatch(content);
  return match != null ? Version.parse(match.group(1)!) : null;
}

Version? pyprojectVersion(String content) {
  final match = RegExp(r'version\s*=\s*"([\d\.]+)"').firstMatch(content);
  return match != null ? Version.parse(match.group(1)!) : null;
}
