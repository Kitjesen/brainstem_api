import datetime

from google.protobuf import empty_pb2 as _empty_pb2
from brainstem_api import common_pb2 as _common_pb2
from brainstem_api import recovery_pb2 as _recovery_pb2
from google.protobuf import timestamp_pb2 as _timestamp_pb2
from google.protobuf import duration_pb2 as _duration_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class CmsStateKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CMS_STATE_KIND_ZERO: _ClassVar[CmsStateKind]
    CMS_STATE_KIND_GROUNDED: _ClassVar[CmsStateKind]
    CMS_STATE_KIND_STANDING: _ClassVar[CmsStateKind]
    CMS_STATE_KIND_WALKING: _ClassVar[CmsStateKind]
    CMS_STATE_KIND_TRANSITIONING: _ClassVar[CmsStateKind]

class CmsTransitionKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CMS_TRANSITION_KIND_NONE: _ClassVar[CmsTransitionKind]
    CMS_TRANSITION_KIND_STAND_UP: _ClassVar[CmsTransitionKind]
    CMS_TRANSITION_KIND_SIT_DOWN: _ClassVar[CmsTransitionKind]
    CMS_TRANSITION_KIND_GESTURE: _ClassVar[CmsTransitionKind]

class ControlOwner(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CONTROL_OWNER_NONE: _ClassVar[ControlOwner]
    CONTROL_OWNER_GRPC: _ClassVar[ControlOwner]
    CONTROL_OWNER_YUNZHUO: _ClassVar[ControlOwner]

class CommandRejectReason(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    COMMAND_REJECT_REASON_NONE: _ClassVar[CommandRejectReason]
    COMMAND_REJECT_REASON_INVALID_VECTOR: _ClassVar[CommandRejectReason]
    COMMAND_REJECT_REASON_RATE_LIMITED: _ClassVar[CommandRejectReason]
    COMMAND_REJECT_REASON_FSM_NOT_READY: _ClassVar[CommandRejectReason]
    COMMAND_REJECT_REASON_MOTORS_DISABLED: _ClassVar[CommandRejectReason]
    COMMAND_REJECT_REASON_MOTOR_FAULT: _ClassVar[CommandRejectReason]
    COMMAND_REJECT_REASON_CONTROL_BUSY: _ClassVar[CommandRejectReason]
    COMMAND_REJECT_REASON_LEASE_MISSING: _ClassVar[CommandRejectReason]
    COMMAND_REJECT_REASON_LEASE_EXPIRED: _ClassVar[CommandRejectReason]
    COMMAND_REJECT_REASON_PREEMPTED: _ClassVar[CommandRejectReason]

class SpeedMode(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    SPEED_MODE_NORMAL: _ClassVar[SpeedMode]
    SPEED_MODE_HIGH: _ClassVar[SpeedMode]
CMS_STATE_KIND_ZERO: CmsStateKind
CMS_STATE_KIND_GROUNDED: CmsStateKind
CMS_STATE_KIND_STANDING: CmsStateKind
CMS_STATE_KIND_WALKING: CmsStateKind
CMS_STATE_KIND_TRANSITIONING: CmsStateKind
CMS_TRANSITION_KIND_NONE: CmsTransitionKind
CMS_TRANSITION_KIND_STAND_UP: CmsTransitionKind
CMS_TRANSITION_KIND_SIT_DOWN: CmsTransitionKind
CMS_TRANSITION_KIND_GESTURE: CmsTransitionKind
CONTROL_OWNER_NONE: ControlOwner
CONTROL_OWNER_GRPC: ControlOwner
CONTROL_OWNER_YUNZHUO: ControlOwner
COMMAND_REJECT_REASON_NONE: CommandRejectReason
COMMAND_REJECT_REASON_INVALID_VECTOR: CommandRejectReason
COMMAND_REJECT_REASON_RATE_LIMITED: CommandRejectReason
COMMAND_REJECT_REASON_FSM_NOT_READY: CommandRejectReason
COMMAND_REJECT_REASON_MOTORS_DISABLED: CommandRejectReason
COMMAND_REJECT_REASON_MOTOR_FAULT: CommandRejectReason
COMMAND_REJECT_REASON_CONTROL_BUSY: CommandRejectReason
COMMAND_REJECT_REASON_LEASE_MISSING: CommandRejectReason
COMMAND_REJECT_REASON_LEASE_EXPIRED: CommandRejectReason
COMMAND_REJECT_REASON_PREEMPTED: CommandRejectReason
SPEED_MODE_NORMAL: SpeedMode
SPEED_MODE_HIGH: SpeedMode

class Voltage(_message.Message):
    __slots__ = ("values",)
    VALUES_FIELD_NUMBER: _ClassVar[int]
    values: _containers.RepeatedScalarFieldContainer[float]
    def __init__(self, values: _Optional[_Iterable[float]] = ...) -> None: ...

class MotorState(_message.Message):
    __slots__ = ("id", "online", "status_code", "temperature", "voltage", "position", "velocity", "torque", "errors")
    ID_FIELD_NUMBER: _ClassVar[int]
    ONLINE_FIELD_NUMBER: _ClassVar[int]
    STATUS_CODE_FIELD_NUMBER: _ClassVar[int]
    TEMPERATURE_FIELD_NUMBER: _ClassVar[int]
    VOLTAGE_FIELD_NUMBER: _ClassVar[int]
    POSITION_FIELD_NUMBER: _ClassVar[int]
    VELOCITY_FIELD_NUMBER: _ClassVar[int]
    TORQUE_FIELD_NUMBER: _ClassVar[int]
    ERRORS_FIELD_NUMBER: _ClassVar[int]
    id: int
    online: bool
    status_code: int
    temperature: float
    voltage: float
    position: float
    velocity: float
    torque: float
    errors: _containers.RepeatedScalarFieldContainer[int]
    def __init__(self, id: _Optional[int] = ..., online: bool = ..., status_code: _Optional[int] = ..., temperature: _Optional[float] = ..., voltage: _Optional[float] = ..., position: _Optional[float] = ..., velocity: _Optional[float] = ..., torque: _Optional[float] = ..., errors: _Optional[_Iterable[int]] = ...) -> None: ...

class MotorStatusResponse(_message.Message):
    __slots__ = ("motors",)
    MOTORS_FIELD_NUMBER: _ClassVar[int]
    motors: _containers.RepeatedCompositeFieldContainer[MotorState]
    def __init__(self, motors: _Optional[_Iterable[_Union[MotorState, _Mapping]]] = ...) -> None: ...

class ClearFaultRequest(_message.Message):
    __slots__ = ("joint_ids",)
    JOINT_IDS_FIELD_NUMBER: _ClassVar[int]
    joint_ids: _containers.RepeatedScalarFieldContainer[int]
    def __init__(self, joint_ids: _Optional[_Iterable[int]] = ...) -> None: ...

class History(_message.Message):
    __slots__ = ("gyroscope", "projected_gravity", "command", "joint_position", "joint_velocity", "action", "next_action", "timestamp", "kp", "kd", "observation")
    GYROSCOPE_FIELD_NUMBER: _ClassVar[int]
    PROJECTED_GRAVITY_FIELD_NUMBER: _ClassVar[int]
    COMMAND_FIELD_NUMBER: _ClassVar[int]
    JOINT_POSITION_FIELD_NUMBER: _ClassVar[int]
    JOINT_VELOCITY_FIELD_NUMBER: _ClassVar[int]
    ACTION_FIELD_NUMBER: _ClassVar[int]
    NEXT_ACTION_FIELD_NUMBER: _ClassVar[int]
    TIMESTAMP_FIELD_NUMBER: _ClassVar[int]
    KP_FIELD_NUMBER: _ClassVar[int]
    KD_FIELD_NUMBER: _ClassVar[int]
    OBSERVATION_FIELD_NUMBER: _ClassVar[int]
    gyroscope: _common_pb2.Vector3
    projected_gravity: _common_pb2.Vector3
    command: Command
    joint_position: _common_pb2.Matrix4
    joint_velocity: _common_pb2.Matrix4
    action: _common_pb2.Matrix4
    next_action: _common_pb2.Matrix4
    timestamp: _duration_pb2.Duration
    kp: _common_pb2.Matrix4
    kd: _common_pb2.Matrix4
    observation: _containers.RepeatedScalarFieldContainer[float]
    def __init__(self, gyroscope: _Optional[_Union[_common_pb2.Vector3, _Mapping]] = ..., projected_gravity: _Optional[_Union[_common_pb2.Vector3, _Mapping]] = ..., command: _Optional[_Union[Command, _Mapping]] = ..., joint_position: _Optional[_Union[_common_pb2.Matrix4, _Mapping]] = ..., joint_velocity: _Optional[_Union[_common_pb2.Matrix4, _Mapping]] = ..., action: _Optional[_Union[_common_pb2.Matrix4, _Mapping]] = ..., next_action: _Optional[_Union[_common_pb2.Matrix4, _Mapping]] = ..., timestamp: _Optional[_Union[datetime.timedelta, _duration_pb2.Duration, _Mapping]] = ..., kp: _Optional[_Union[_common_pb2.Matrix4, _Mapping]] = ..., kd: _Optional[_Union[_common_pb2.Matrix4, _Mapping]] = ..., observation: _Optional[_Iterable[float]] = ...) -> None: ...

class Imu(_message.Message):
    __slots__ = ("gyroscope", "quaternion", "timestamp", "linear_acceleration")
    GYROSCOPE_FIELD_NUMBER: _ClassVar[int]
    QUATERNION_FIELD_NUMBER: _ClassVar[int]
    TIMESTAMP_FIELD_NUMBER: _ClassVar[int]
    LINEAR_ACCELERATION_FIELD_NUMBER: _ClassVar[int]
    gyroscope: _common_pb2.Vector3
    quaternion: _common_pb2.Quaternion
    timestamp: _duration_pb2.Duration
    linear_acceleration: _common_pb2.Vector3
    def __init__(self, gyroscope: _Optional[_Union[_common_pb2.Vector3, _Mapping]] = ..., quaternion: _Optional[_Union[_common_pb2.Quaternion, _Mapping]] = ..., timestamp: _Optional[_Union[datetime.timedelta, _duration_pb2.Duration, _Mapping]] = ..., linear_acceleration: _Optional[_Union[_common_pb2.Vector3, _Mapping]] = ...) -> None: ...

class Joint(_message.Message):
    __slots__ = ("single_joint", "all_joints", "timestamp")
    SINGLE_JOINT_FIELD_NUMBER: _ClassVar[int]
    ALL_JOINTS_FIELD_NUMBER: _ClassVar[int]
    TIMESTAMP_FIELD_NUMBER: _ClassVar[int]
    single_joint: SingleJoint
    all_joints: AllJoints
    timestamp: _duration_pb2.Duration
    def __init__(self, single_joint: _Optional[_Union[SingleJoint, _Mapping]] = ..., all_joints: _Optional[_Union[AllJoints, _Mapping]] = ..., timestamp: _Optional[_Union[datetime.timedelta, _duration_pb2.Duration, _Mapping]] = ...) -> None: ...

class SingleJoint(_message.Message):
    __slots__ = ("id", "position", "velocity", "torque", "status")
    ID_FIELD_NUMBER: _ClassVar[int]
    POSITION_FIELD_NUMBER: _ClassVar[int]
    VELOCITY_FIELD_NUMBER: _ClassVar[int]
    TORQUE_FIELD_NUMBER: _ClassVar[int]
    STATUS_FIELD_NUMBER: _ClassVar[int]
    id: int
    position: float
    velocity: float
    torque: float
    status: int
    def __init__(self, id: _Optional[int] = ..., position: _Optional[float] = ..., velocity: _Optional[float] = ..., torque: _Optional[float] = ..., status: _Optional[int] = ...) -> None: ...

class AllJoints(_message.Message):
    __slots__ = ("position", "velocity", "torque", "status")
    POSITION_FIELD_NUMBER: _ClassVar[int]
    VELOCITY_FIELD_NUMBER: _ClassVar[int]
    TORQUE_FIELD_NUMBER: _ClassVar[int]
    STATUS_FIELD_NUMBER: _ClassVar[int]
    position: _common_pb2.Matrix4
    velocity: _common_pb2.Matrix4
    torque: _common_pb2.Matrix4
    status: _common_pb2.Matrix4Int32
    def __init__(self, position: _Optional[_Union[_common_pb2.Matrix4, _Mapping]] = ..., velocity: _Optional[_Union[_common_pb2.Matrix4, _Mapping]] = ..., torque: _Optional[_Union[_common_pb2.Matrix4, _Mapping]] = ..., status: _Optional[_Union[_common_pb2.Matrix4Int32, _Mapping]] = ...) -> None: ...

class Params(_message.Message):
    __slots__ = ("robot",)
    ROBOT_FIELD_NUMBER: _ClassVar[int]
    robot: _common_pb2.RobotModel
    def __init__(self, robot: _Optional[_Union[_common_pb2.RobotModel, _Mapping]] = ...) -> None: ...

class ProfileRequest(_message.Message):
    __slots__ = ("name",)
    NAME_FIELD_NUMBER: _ClassVar[int]
    name: str
    def __init__(self, name: _Optional[str] = ...) -> None: ...

class ProfileInfo(_message.Message):
    __slots__ = ("current", "available", "descriptions", "current_description", "mode_capabilities", "active_mode_id")
    CURRENT_FIELD_NUMBER: _ClassVar[int]
    AVAILABLE_FIELD_NUMBER: _ClassVar[int]
    DESCRIPTIONS_FIELD_NUMBER: _ClassVar[int]
    CURRENT_DESCRIPTION_FIELD_NUMBER: _ClassVar[int]
    MODE_CAPABILITIES_FIELD_NUMBER: _ClassVar[int]
    ACTIVE_MODE_ID_FIELD_NUMBER: _ClassVar[int]
    current: str
    available: _containers.RepeatedScalarFieldContainer[str]
    descriptions: _containers.RepeatedScalarFieldContainer[str]
    current_description: str
    mode_capabilities: _containers.RepeatedCompositeFieldContainer[_recovery_pb2.RobotModeCapability]
    active_mode_id: str
    def __init__(self, current: _Optional[str] = ..., available: _Optional[_Iterable[str]] = ..., descriptions: _Optional[_Iterable[str]] = ..., current_description: _Optional[str] = ..., mode_capabilities: _Optional[_Iterable[_Union[_recovery_pb2.RobotModeCapability, _Mapping]]] = ..., active_mode_id: _Optional[str] = ...) -> None: ...

class CmsState(_message.Message):
    __slots__ = ("kind", "transition", "gesture_name")
    KIND_FIELD_NUMBER: _ClassVar[int]
    TRANSITION_FIELD_NUMBER: _ClassVar[int]
    GESTURE_NAME_FIELD_NUMBER: _ClassVar[int]
    kind: CmsStateKind
    transition: CmsTransitionKind
    gesture_name: str
    def __init__(self, kind: _Optional[_Union[CmsStateKind, str]] = ..., transition: _Optional[_Union[CmsTransitionKind, str]] = ..., gesture_name: _Optional[str] = ...) -> None: ...

class AcquireControlRequest(_message.Message):
    __slots__ = ("client_id",)
    CLIENT_ID_FIELD_NUMBER: _ClassVar[int]
    client_id: str
    def __init__(self, client_id: _Optional[str] = ...) -> None: ...

class ControlLeaseRequest(_message.Message):
    __slots__ = ("token",)
    TOKEN_FIELD_NUMBER: _ClassVar[int]
    token: str
    def __init__(self, token: _Optional[str] = ...) -> None: ...

class ControlLease(_message.Message):
    __slots__ = ("accepted", "token", "lease_duration_ms", "reason", "status")
    ACCEPTED_FIELD_NUMBER: _ClassVar[int]
    TOKEN_FIELD_NUMBER: _ClassVar[int]
    LEASE_DURATION_MS_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    STATUS_FIELD_NUMBER: _ClassVar[int]
    accepted: bool
    token: str
    lease_duration_ms: int
    reason: CommandRejectReason
    status: ControlStatus
    def __init__(self, accepted: bool = ..., token: _Optional[str] = ..., lease_duration_ms: _Optional[int] = ..., reason: _Optional[_Union[CommandRejectReason, str]] = ..., status: _Optional[_Union[ControlStatus, _Mapping]] = ...) -> None: ...

class WalkRequest(_message.Message):
    __slots__ = ("token", "sequence", "direction")
    TOKEN_FIELD_NUMBER: _ClassVar[int]
    SEQUENCE_FIELD_NUMBER: _ClassVar[int]
    DIRECTION_FIELD_NUMBER: _ClassVar[int]
    token: str
    sequence: int
    direction: _common_pb2.Vector3
    def __init__(self, token: _Optional[str] = ..., sequence: _Optional[int] = ..., direction: _Optional[_Union[_common_pb2.Vector3, _Mapping]] = ...) -> None: ...

class CommandAck(_message.Message):
    __slots__ = ("accepted", "reason", "sequence", "status")
    ACCEPTED_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    SEQUENCE_FIELD_NUMBER: _ClassVar[int]
    STATUS_FIELD_NUMBER: _ClassVar[int]
    accepted: bool
    reason: CommandRejectReason
    sequence: int
    status: ControlStatus
    def __init__(self, accepted: bool = ..., reason: _Optional[_Union[CommandRejectReason, str]] = ..., sequence: _Optional[int] = ..., status: _Optional[_Union[ControlStatus, _Mapping]] = ...) -> None: ...

class ControlStatus(_message.Message):
    __slots__ = ("fsm", "motor_output_enabled", "owner", "critical_motor_fault", "grpc_lease_active", "lease_remaining_ms", "last_accepted_sequence", "last_decision", "ready_for_walk", "owner_id", "accepted_count", "rejected_count")
    FSM_FIELD_NUMBER: _ClassVar[int]
    MOTOR_OUTPUT_ENABLED_FIELD_NUMBER: _ClassVar[int]
    OWNER_FIELD_NUMBER: _ClassVar[int]
    CRITICAL_MOTOR_FAULT_FIELD_NUMBER: _ClassVar[int]
    GRPC_LEASE_ACTIVE_FIELD_NUMBER: _ClassVar[int]
    LEASE_REMAINING_MS_FIELD_NUMBER: _ClassVar[int]
    LAST_ACCEPTED_SEQUENCE_FIELD_NUMBER: _ClassVar[int]
    LAST_DECISION_FIELD_NUMBER: _ClassVar[int]
    READY_FOR_WALK_FIELD_NUMBER: _ClassVar[int]
    OWNER_ID_FIELD_NUMBER: _ClassVar[int]
    ACCEPTED_COUNT_FIELD_NUMBER: _ClassVar[int]
    REJECTED_COUNT_FIELD_NUMBER: _ClassVar[int]
    fsm: CmsState
    motor_output_enabled: bool
    owner: ControlOwner
    critical_motor_fault: bool
    grpc_lease_active: bool
    lease_remaining_ms: int
    last_accepted_sequence: int
    last_decision: CommandRejectReason
    ready_for_walk: bool
    owner_id: str
    accepted_count: int
    rejected_count: int
    def __init__(self, fsm: _Optional[_Union[CmsState, _Mapping]] = ..., motor_output_enabled: bool = ..., owner: _Optional[_Union[ControlOwner, str]] = ..., critical_motor_fault: bool = ..., grpc_lease_active: bool = ..., lease_remaining_ms: _Optional[int] = ..., last_accepted_sequence: _Optional[int] = ..., last_decision: _Optional[_Union[CommandRejectReason, str]] = ..., ready_for_walk: bool = ..., owner_id: _Optional[str] = ..., accepted_count: _Optional[int] = ..., rejected_count: _Optional[int] = ...) -> None: ...

class Command(_message.Message):
    __slots__ = ("idle", "stand_up", "sit_down", "walk")
    IDLE_FIELD_NUMBER: _ClassVar[int]
    STAND_UP_FIELD_NUMBER: _ClassVar[int]
    SIT_DOWN_FIELD_NUMBER: _ClassVar[int]
    WALK_FIELD_NUMBER: _ClassVar[int]
    idle: _empty_pb2.Empty
    stand_up: _empty_pb2.Empty
    sit_down: _empty_pb2.Empty
    walk: _common_pb2.Vector3
    def __init__(self, idle: _Optional[_Union[_empty_pb2.Empty, _Mapping]] = ..., stand_up: _Optional[_Union[_empty_pb2.Empty, _Mapping]] = ..., sit_down: _Optional[_Union[_empty_pb2.Empty, _Mapping]] = ..., walk: _Optional[_Union[_common_pb2.Vector3, _Mapping]] = ...) -> None: ...

class GestureRequest(_message.Message):
    __slots__ = ("name",)
    NAME_FIELD_NUMBER: _ClassVar[int]
    name: str
    def __init__(self, name: _Optional[str] = ...) -> None: ...

class GestureList(_message.Message):
    __slots__ = ("gestures",)
    GESTURES_FIELD_NUMBER: _ClassVar[int]
    gestures: _containers.RepeatedCompositeFieldContainer[GestureInfo]
    def __init__(self, gestures: _Optional[_Iterable[_Union[GestureInfo, _Mapping]]] = ...) -> None: ...

class GestureInfo(_message.Message):
    __slots__ = ("name", "description", "duration_ms")
    NAME_FIELD_NUMBER: _ClassVar[int]
    DESCRIPTION_FIELD_NUMBER: _ClassVar[int]
    DURATION_MS_FIELD_NUMBER: _ClassVar[int]
    name: str
    description: str
    duration_ms: int
    def __init__(self, name: _Optional[str] = ..., description: _Optional[str] = ..., duration_ms: _Optional[int] = ...) -> None: ...

class SpeedModeRequest(_message.Message):
    __slots__ = ("mode",)
    MODE_FIELD_NUMBER: _ClassVar[int]
    mode: SpeedMode
    def __init__(self, mode: _Optional[_Union[SpeedMode, str]] = ...) -> None: ...
