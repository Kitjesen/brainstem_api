# brainstem_api

`brainstem_api` 是独立仓库中的 brainstem 控制栈 gRPC / Protobuf 契约，定义 inovxio
四足和人形机器人的运动控制、跌倒恢复、传感器订阅和状态查询接口。Dart + Python 双语言。

**当前版本**：`2.3.0` (2026-11-17)

前身为 `han_dog_message` v1.0.0。v2.0.0 是破坏性 rename —— 见 `CHANGELOG.md`。

## 概述

本仓库定义 brainstem 对外的 gRPC 服务：

| 服务 | 用途 | 定义文件 |
|------|------|---------|
| **RobotControl** | 主控服务：运动指令 + 传感器监控（1.x 的 `Cms` 继任者） | `brainstem_api/cms.proto` |
| **RobotRecovery** | 跌倒恢复会话：进入、使能、心跳、退出、状态与动作。不是运动策略 `SwitchProfile` | `brainstem_api/recovery.proto` |
| **Mujoco** | MuJoCo 物理仿真接口 | `brainstem_api/mujoco.proto` |
| **MujocoViewer** | MuJoCo 可视化回放 | `brainstem_api/mujoco.proto` |

- **proto package**: `brainstem.api.v1`
- **default gRPC port**: `:13145` (RobotControl)

## 关节索引约定

所有 `Matrix4` 消息存储 16 个关节值，顺序固定：

```
索引  关节
────────────────────
 0    FR_hip    (前右髋)
 1    FR_thigh  (前右大腿)
 2    FR_calf   (前右小腿)
 3    FL_hip    (前左髋)
 4    FL_thigh  (前左大腿)
 5    FL_calf   (前左小腿)
 6    RR_hip    (后右髋)
 7    RR_thigh  (后右大腿)
 8    RR_calf   (后右小腿)
 9    RL_hip    (后左髋)
10    RL_thigh  (后左大腿)
11    RL_calf   (后左小腿)
12    FR_foot   (前右脚踝)
13    FL_foot   (前左脚踝)
14    RR_foot   (后右脚踝)
15    RL_foot   (后左脚踝)
```

## 单位约定

| 物理量 | 单位 |
|--------|------|
| 关节角度 | rad |
| 关节角速度 | rad/s |
| IMU 角速度 | rad/s |
| IMU 线加速度 | m/s² |
| 力矩 | N·m |
| 机身速度 | `x/y`: m/s，`z`: rad/s |
| 重力投影 | 单位向量 |
| 时间戳 | `google.protobuf.Duration`（相对于会话开始时间） |

## 坐标系

- **Body frame**：IMU 的角速度、线加速度和重力投影均在机器人体坐标系下表示
- **重力投影**：静止水平放置时为 `(0, 0, -1)`
- **行走方向**：`x` = 前后（正=前），`y` = 左右（正=左），`z` = 旋转（正=逆时针）
- **四元数**：Hamilton 约定 `q = w + xi + yj + zk`，表示 world → body 旋转

## 项目结构

```
brainstem_api/
├── VERSION                 # 版本号 (由 tool/publish.dart 和 pubspec/pyproject 同步)
├── CHANGELOG.md            # 变更历史
├── brainstem_api/          # Proto 源文件
│   ├── common.proto        #   通用数据类型 (Vector3, Matrix4, Quaternion ...)
│   ├── cms.proto           #   RobotControl 服务 (指令 + 监控)
│   ├── recovery.proto      #   RobotRecovery 服务 (跌倒恢复)
│   └── mujoco.proto        #   MuJoCo 仿真接口
├── dart/                   # Dart 生成代码 + 包配置
│   ├── lib/
│   │   ├── brainstem_api.dart       # Barrel 导出
│   │   └── brainstem_api/*.pb.dart  # 生成的消息类
│   └── pubspec.yaml
├── python/                 # Python 生成代码 + 包配置
│   ├── brainstem_api/*_pb2.py       # 生成的消息类（含 recovery_pb2.py）
│   ├── brainstem_api/*_pb2_grpc.py  # 生成的 gRPC 桩（含 recovery_pb2_grpc.py）
│   └── pyproject.toml
└── tool/
    ├── publish.dart        # 版本发布脚本
    ├── regen_dart.sh       # Dart codegen 重生成
    └── regen_python.sh     # Python codegen 重生成
```

> Proto 文件放在 `brainstem_api/` 而非 `protos/`，是为了兼容 Python 的包导入路径。

## 安装

克隆本仓库即可使用。Dart 包在 `dart/`，Python 包在 `python/`。

### Dart

其他项目可以通过 git 依赖引用：

```yaml
dependencies:
  brainstem_api:
    git:
      url: https://github.com/Kitjesen/brainstem_api.git
      path: dart
```

在本仓库里解析并检查：

```bash
cd dart
dart pub get
```

### Python

```bash
cd python
pip install -e .
```

## 快速开始

### Dart 客户端

```dart
import 'package:grpc/grpc.dart';
import 'package:brainstem_api/brainstem_api.dart';

final channel = ClientChannel('localhost', port: 13145);
final client = RobotControlClient(channel);
final recovery = RobotRecoveryClient(channel);

// 订阅实时推理数据
await for (final history in client.listenHistory(Empty())) {
  print('关节角度: ${history.jointPosition.values}');
  print('重力投影: ${history.projectedGravity}');
}
```

### Python 客户端

```python
import grpc
from brainstem_api import cms_pb2_grpc, recovery_pb2_grpc
from google.protobuf.empty_pb2 import Empty

channel = grpc.insecure_channel('localhost:13145')
stub = cms_pb2_grpc.RobotControlStub(channel)
recovery = recovery_pb2_grpc.RobotRecoveryStub(channel)

# 订阅实时推理数据
for history in stub.ListenHistory(Empty()):
    print(f'关节角度: {list(history.joint_position.values)}')
    print(f'重力投影: ({history.projected_gravity.x}, {history.projected_gravity.y}, {history.projected_gravity.z})')
```

## 重新生成代码

需要先安装 protobuf 编译器和 Dart 插件：

```bash
sudo apt-get install -y protobuf-compiler
protoc --version

dart pub global activate protoc_plugin
export PATH="$PATH:$HOME/.pub-cache/bin"  # or AppData\Local\Pub\Cache\bin on Windows
```

### 生成 Dart 代码

```bash
bash tool/regen_dart.sh
```

或手动：

```bash
protoc --dart_out=grpc:dart/lib/ -I . brainstem_api/*.proto
```

### 生成 Python 代码

使用与已提交桩相同的 `grpcio-tools==1.78.0`：

```bash
bash tool/regen_python.sh
```

## 发布新版本

1. 修改 `.proto` 文件
2. 重新生成 proto 代码
3. 同步更新 `dart/pubspec.yaml` 和 `python/pyproject.toml` 中的版本号
4. 更新 `VERSION` 文件 + 写 `CHANGELOG.md` 条目
5. 运行发布脚本：

```bash
dart run tool/publish.dart
```

> 破坏性变更（改 package、改 service 名、改字段类型）要走 MAJOR bump，并同步更新
> 所有消费者。版本记录见 `CHANGELOG.md`。
