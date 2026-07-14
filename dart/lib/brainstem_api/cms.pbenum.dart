// This is a generated file - do not edit.
//
// Generated from brainstem_api/cms.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 运动指令。
class CmsStateKind extends $pb.ProtobufEnum {
  static const CmsStateKind CMS_STATE_KIND_ZERO =
      CmsStateKind._(0, _omitEnumNames ? '' : 'CMS_STATE_KIND_ZERO');
  static const CmsStateKind CMS_STATE_KIND_GROUNDED =
      CmsStateKind._(1, _omitEnumNames ? '' : 'CMS_STATE_KIND_GROUNDED');
  static const CmsStateKind CMS_STATE_KIND_STANDING =
      CmsStateKind._(2, _omitEnumNames ? '' : 'CMS_STATE_KIND_STANDING');
  static const CmsStateKind CMS_STATE_KIND_WALKING =
      CmsStateKind._(3, _omitEnumNames ? '' : 'CMS_STATE_KIND_WALKING');
  static const CmsStateKind CMS_STATE_KIND_TRANSITIONING =
      CmsStateKind._(4, _omitEnumNames ? '' : 'CMS_STATE_KIND_TRANSITIONING');

  static const $core.List<CmsStateKind> values = <CmsStateKind>[
    CMS_STATE_KIND_ZERO,
    CMS_STATE_KIND_GROUNDED,
    CMS_STATE_KIND_STANDING,
    CMS_STATE_KIND_WALKING,
    CMS_STATE_KIND_TRANSITIONING,
  ];

  static final $core.List<CmsStateKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static CmsStateKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CmsStateKind._(super.value, super.name);
}

class CmsTransitionKind extends $pb.ProtobufEnum {
  static const CmsTransitionKind CMS_TRANSITION_KIND_NONE =
      CmsTransitionKind._(0, _omitEnumNames ? '' : 'CMS_TRANSITION_KIND_NONE');
  static const CmsTransitionKind CMS_TRANSITION_KIND_STAND_UP =
      CmsTransitionKind._(
          1, _omitEnumNames ? '' : 'CMS_TRANSITION_KIND_STAND_UP');
  static const CmsTransitionKind CMS_TRANSITION_KIND_SIT_DOWN =
      CmsTransitionKind._(
          2, _omitEnumNames ? '' : 'CMS_TRANSITION_KIND_SIT_DOWN');
  static const CmsTransitionKind CMS_TRANSITION_KIND_GESTURE =
      CmsTransitionKind._(
          3, _omitEnumNames ? '' : 'CMS_TRANSITION_KIND_GESTURE');

  static const $core.List<CmsTransitionKind> values = <CmsTransitionKind>[
    CMS_TRANSITION_KIND_NONE,
    CMS_TRANSITION_KIND_STAND_UP,
    CMS_TRANSITION_KIND_SIT_DOWN,
    CMS_TRANSITION_KIND_GESTURE,
  ];

  static final $core.List<CmsTransitionKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static CmsTransitionKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CmsTransitionKind._(super.value, super.name);
}

class ControlOwner extends $pb.ProtobufEnum {
  static const ControlOwner CONTROL_OWNER_NONE =
      ControlOwner._(0, _omitEnumNames ? '' : 'CONTROL_OWNER_NONE');
  static const ControlOwner CONTROL_OWNER_GRPC =
      ControlOwner._(1, _omitEnumNames ? '' : 'CONTROL_OWNER_GRPC');
  static const ControlOwner CONTROL_OWNER_YUNZHUO =
      ControlOwner._(2, _omitEnumNames ? '' : 'CONTROL_OWNER_YUNZHUO');

  static const $core.List<ControlOwner> values = <ControlOwner>[
    CONTROL_OWNER_NONE,
    CONTROL_OWNER_GRPC,
    CONTROL_OWNER_YUNZHUO,
  ];

  static final $core.List<ControlOwner?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ControlOwner? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ControlOwner._(super.value, super.name);
}

class CommandRejectReason extends $pb.ProtobufEnum {
  static const CommandRejectReason COMMAND_REJECT_REASON_NONE =
      CommandRejectReason._(
          0, _omitEnumNames ? '' : 'COMMAND_REJECT_REASON_NONE');
  static const CommandRejectReason COMMAND_REJECT_REASON_INVALID_VECTOR =
      CommandRejectReason._(
          1, _omitEnumNames ? '' : 'COMMAND_REJECT_REASON_INVALID_VECTOR');
  static const CommandRejectReason COMMAND_REJECT_REASON_RATE_LIMITED =
      CommandRejectReason._(
          2, _omitEnumNames ? '' : 'COMMAND_REJECT_REASON_RATE_LIMITED');
  static const CommandRejectReason COMMAND_REJECT_REASON_FSM_NOT_READY =
      CommandRejectReason._(
          3, _omitEnumNames ? '' : 'COMMAND_REJECT_REASON_FSM_NOT_READY');
  static const CommandRejectReason COMMAND_REJECT_REASON_MOTORS_DISABLED =
      CommandRejectReason._(
          4, _omitEnumNames ? '' : 'COMMAND_REJECT_REASON_MOTORS_DISABLED');
  static const CommandRejectReason COMMAND_REJECT_REASON_MOTOR_FAULT =
      CommandRejectReason._(
          5, _omitEnumNames ? '' : 'COMMAND_REJECT_REASON_MOTOR_FAULT');
  static const CommandRejectReason COMMAND_REJECT_REASON_CONTROL_BUSY =
      CommandRejectReason._(
          6, _omitEnumNames ? '' : 'COMMAND_REJECT_REASON_CONTROL_BUSY');
  static const CommandRejectReason COMMAND_REJECT_REASON_LEASE_MISSING =
      CommandRejectReason._(
          7, _omitEnumNames ? '' : 'COMMAND_REJECT_REASON_LEASE_MISSING');
  static const CommandRejectReason COMMAND_REJECT_REASON_LEASE_EXPIRED =
      CommandRejectReason._(
          8, _omitEnumNames ? '' : 'COMMAND_REJECT_REASON_LEASE_EXPIRED');
  static const CommandRejectReason COMMAND_REJECT_REASON_PREEMPTED =
      CommandRejectReason._(
          9, _omitEnumNames ? '' : 'COMMAND_REJECT_REASON_PREEMPTED');

  static const $core.List<CommandRejectReason> values = <CommandRejectReason>[
    COMMAND_REJECT_REASON_NONE,
    COMMAND_REJECT_REASON_INVALID_VECTOR,
    COMMAND_REJECT_REASON_RATE_LIMITED,
    COMMAND_REJECT_REASON_FSM_NOT_READY,
    COMMAND_REJECT_REASON_MOTORS_DISABLED,
    COMMAND_REJECT_REASON_MOTOR_FAULT,
    COMMAND_REJECT_REASON_CONTROL_BUSY,
    COMMAND_REJECT_REASON_LEASE_MISSING,
    COMMAND_REJECT_REASON_LEASE_EXPIRED,
    COMMAND_REJECT_REASON_PREEMPTED,
  ];

  static final $core.List<CommandRejectReason?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static CommandRejectReason? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CommandRejectReason._(super.value, super.name);
}

class SpeedMode extends $pb.ProtobufEnum {
  /// 标准模式（默认）。
  static const SpeedMode SPEED_MODE_NORMAL =
      SpeedMode._(0, _omitEnumNames ? '' : 'SPEED_MODE_NORMAL');

  /// 高速模式，最大速度 2.5m/s。需要开阔平坦场地。
  static const SpeedMode SPEED_MODE_HIGH =
      SpeedMode._(1, _omitEnumNames ? '' : 'SPEED_MODE_HIGH');

  static const $core.List<SpeedMode> values = <SpeedMode>[
    SPEED_MODE_NORMAL,
    SPEED_MODE_HIGH,
  ];

  static final $core.List<SpeedMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static SpeedMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SpeedMode._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
