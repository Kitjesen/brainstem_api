from google.protobuf import empty_pb2 as _empty_pb2
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class RobotModeKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ROBOT_MODE_KIND_UNKNOWN: _ClassVar[RobotModeKind]
    ROBOT_MODE_KIND_LOCOMOTION_PROFILE: _ClassVar[RobotModeKind]
    ROBOT_MODE_KIND_RECOVERY_ACTION: _ClassVar[RobotModeKind]

class RobotModeAvailability(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ROBOT_MODE_AVAILABILITY_UNKNOWN: _ClassVar[RobotModeAvailability]
    ROBOT_MODE_AVAILABILITY_UNAVAILABLE: _ClassVar[RobotModeAvailability]
    ROBOT_MODE_AVAILABILITY_AVAILABLE: _ClassVar[RobotModeAvailability]

class RecoveryPhase(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    RECOVERY_PHASE_UNKNOWN: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_DISABLED: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_PREPARING: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_WAITING: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_RECOVERING: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_BALANCED: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_LOWERING: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_PRONE_HOLD: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_STAND_UP: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_STANDING: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_SIT_DOWN: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_GROUNDED: _ClassVar[RecoveryPhase]
    RECOVERY_PHASE_FAILED: _ClassVar[RecoveryPhase]

class RecoveryActionDecision(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    RECOVERY_ACTION_DECISION_UNKNOWN: _ClassVar[RecoveryActionDecision]
    RECOVERY_ACTION_DECISION_ACCEPTED: _ClassVar[RecoveryActionDecision]
    RECOVERY_ACTION_DECISION_REJECTED: _ClassVar[RecoveryActionDecision]
ROBOT_MODE_KIND_UNKNOWN: RobotModeKind
ROBOT_MODE_KIND_LOCOMOTION_PROFILE: RobotModeKind
ROBOT_MODE_KIND_RECOVERY_ACTION: RobotModeKind
ROBOT_MODE_AVAILABILITY_UNKNOWN: RobotModeAvailability
ROBOT_MODE_AVAILABILITY_UNAVAILABLE: RobotModeAvailability
ROBOT_MODE_AVAILABILITY_AVAILABLE: RobotModeAvailability
RECOVERY_PHASE_UNKNOWN: RecoveryPhase
RECOVERY_PHASE_DISABLED: RecoveryPhase
RECOVERY_PHASE_PREPARING: RecoveryPhase
RECOVERY_PHASE_WAITING: RecoveryPhase
RECOVERY_PHASE_RECOVERING: RecoveryPhase
RECOVERY_PHASE_BALANCED: RecoveryPhase
RECOVERY_PHASE_LOWERING: RecoveryPhase
RECOVERY_PHASE_PRONE_HOLD: RecoveryPhase
RECOVERY_PHASE_STAND_UP: RecoveryPhase
RECOVERY_PHASE_STANDING: RecoveryPhase
RECOVERY_PHASE_SIT_DOWN: RecoveryPhase
RECOVERY_PHASE_GROUNDED: RecoveryPhase
RECOVERY_PHASE_FAILED: RecoveryPhase
RECOVERY_ACTION_DECISION_UNKNOWN: RecoveryActionDecision
RECOVERY_ACTION_DECISION_ACCEPTED: RecoveryActionDecision
RECOVERY_ACTION_DECISION_REJECTED: RecoveryActionDecision

class RobotModeCapability(_message.Message):
    __slots__ = ("id", "kind", "availability", "profile_id", "unavailable_reason")
    ID_FIELD_NUMBER: _ClassVar[int]
    KIND_FIELD_NUMBER: _ClassVar[int]
    AVAILABILITY_FIELD_NUMBER: _ClassVar[int]
    PROFILE_ID_FIELD_NUMBER: _ClassVar[int]
    UNAVAILABLE_REASON_FIELD_NUMBER: _ClassVar[int]
    id: str
    kind: RobotModeKind
    availability: RobotModeAvailability
    profile_id: str
    unavailable_reason: str
    def __init__(self, id: _Optional[str] = ..., kind: _Optional[_Union[RobotModeKind, str]] = ..., availability: _Optional[_Union[RobotModeAvailability, str]] = ..., profile_id: _Optional[str] = ..., unavailable_reason: _Optional[str] = ...) -> None: ...

class RecoveryStatus(_message.Message):
    __slots__ = ("availability", "phase", "operation_id", "unavailable_reason", "selected", "session_token", "motor_disable_confirmed")
    AVAILABILITY_FIELD_NUMBER: _ClassVar[int]
    PHASE_FIELD_NUMBER: _ClassVar[int]
    OPERATION_ID_FIELD_NUMBER: _ClassVar[int]
    UNAVAILABLE_REASON_FIELD_NUMBER: _ClassVar[int]
    SELECTED_FIELD_NUMBER: _ClassVar[int]
    SESSION_TOKEN_FIELD_NUMBER: _ClassVar[int]
    MOTOR_DISABLE_CONFIRMED_FIELD_NUMBER: _ClassVar[int]
    availability: RobotModeAvailability
    phase: RecoveryPhase
    operation_id: str
    unavailable_reason: str
    selected: bool
    session_token: str
    motor_disable_confirmed: bool
    def __init__(self, availability: _Optional[_Union[RobotModeAvailability, str]] = ..., phase: _Optional[_Union[RecoveryPhase, str]] = ..., operation_id: _Optional[str] = ..., unavailable_reason: _Optional[str] = ..., selected: bool = ..., session_token: _Optional[str] = ..., motor_disable_confirmed: bool = ...) -> None: ...

class RecoverySessionRequest(_message.Message):
    __slots__ = ("session_token",)
    SESSION_TOKEN_FIELD_NUMBER: _ClassVar[int]
    session_token: str
    def __init__(self, session_token: _Optional[str] = ...) -> None: ...

class RecoveryStartRequest(_message.Message):
    __slots__ = ("operation_id", "session_token")
    OPERATION_ID_FIELD_NUMBER: _ClassVar[int]
    SESSION_TOKEN_FIELD_NUMBER: _ClassVar[int]
    operation_id: str
    session_token: str
    def __init__(self, operation_id: _Optional[str] = ..., session_token: _Optional[str] = ...) -> None: ...

class RecoveryCancelRequest(_message.Message):
    __slots__ = ("operation_id", "session_token")
    OPERATION_ID_FIELD_NUMBER: _ClassVar[int]
    SESSION_TOKEN_FIELD_NUMBER: _ClassVar[int]
    operation_id: str
    session_token: str
    def __init__(self, operation_id: _Optional[str] = ..., session_token: _Optional[str] = ...) -> None: ...

class RecoveryActionReply(_message.Message):
    __slots__ = ("operation_id", "decision", "phase", "reason")
    OPERATION_ID_FIELD_NUMBER: _ClassVar[int]
    DECISION_FIELD_NUMBER: _ClassVar[int]
    PHASE_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    operation_id: str
    decision: RecoveryActionDecision
    phase: RecoveryPhase
    reason: str
    def __init__(self, operation_id: _Optional[str] = ..., decision: _Optional[_Union[RecoveryActionDecision, str]] = ..., phase: _Optional[_Union[RecoveryPhase, str]] = ..., reason: _Optional[str] = ...) -> None: ...
