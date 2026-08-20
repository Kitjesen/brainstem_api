import 'dart:io';

import 'publish.dart' as publish;

void main(List<String> args) {
  final root = args.isEmpty
      ? File(Platform.script.toFilePath()).parent.parent
      : Directory(args.single);
  publish.checkRepositoryVersion(root);

  final fixture = Directory.systemTemp.createTempSync(
    'brainstem-api-version-contract-',
  );
  try {
    Directory('${fixture.path}/dart').createSync();
    Directory('${fixture.path}/python').createSync();
    File('${fixture.path}/VERSION').writeAsStringSync('2.0.0\n');
    File(
      '${fixture.path}/dart/pubspec.yaml',
    ).writeAsStringSync('name: fixture\nversion: 2.0.0\n');
    File(
      '${fixture.path}/python/pyproject.toml',
    ).writeAsStringSync('[tool.poetry]\nversion = "2.0.0"\n');

    publish.updateRepositoryVersion(fixture, publish.Version(2, 1, 0));
    _expect(
      publish.checkRepositoryVersion(fixture).toString() == '2.1.0',
      'publish update did not produce version 2.1.0',
    );

    File('${fixture.path}/VERSION').writeAsStringSync('2.0.0\n');
    _expectThrows(
      () => publish.checkRepositoryVersion(fixture),
      'version mismatch must fail closed',
    );
  } finally {
    fixture.deleteSync(recursive: true);
  }
}

void _expect(bool condition, String message) {
  if (!condition) throw StateError(message);
}

void _expectThrows(void Function() body, String message) {
  try {
    body();
  } on StateError {
    return;
  }
  throw StateError(message);
}
