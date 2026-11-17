# brainstem_api (Python)

Brainstem 控制栈的 gRPC / Protobuf Python 桩。本目录是独立仓库 `brainstem_api` 的 Python 包。

契约源文件：

- `brainstem_api/cms.proto` — `RobotControl`
- `brainstem_api/recovery.proto` — `RobotRecovery`

详细说明见 [项目 README](../README.md)。

## 安装

```bash
pip install -e .
```

## 快速开始

```python
import grpc
from brainstem_api import cms_pb2_grpc, recovery_pb2_grpc
from google.protobuf.empty_pb2 import Empty

channel = grpc.insecure_channel("localhost:13145")
control = cms_pb2_grpc.RobotControlStub(channel)
recovery = recovery_pb2_grpc.RobotRecoveryStub(channel)

control.StandUp(Empty())
print(recovery.GetStatus(Empty()).phase)
```
