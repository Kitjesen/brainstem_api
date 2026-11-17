// This is a generated file - do not edit.
//
// Generated from brainstem_api/recovery.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RobotModeKind extends $pb.ProtobufEnum {
  static const RobotModeKind ROBOT_MODE_KIND_UNKNOWN =
      RobotModeKind._(0, _omitEnumNames ? '' : 'ROBOT_MODE_KIND_UNKNOWN');
  static const RobotModeKind ROBOT_MODE_KIND_LOCOMOTION_PROFILE =
      RobotModeKind._(
          1, _omitEnumNames ? '' : 'ROBOT_MODE_KIND_LOCOMOTION_PROFILE');
  static const RobotModeKind ROBOT_MODE_KIND_RECOVERY_ACTION = RobotModeKind._(
      2, _omitEnumNames ? '' : 'ROBOT_MODE_KIND_RECOVERY_ACTION');

  static const $core.List<RobotModeKind> values = <RobotModeKind>[
    ROBOT_MODE_KIND_UNKNOWN,
    ROBOT_MODE_KIND_LOCOMOTION_PROFILE,
    ROBOT_MODE_KIND_RECOVERY_ACTION,
  ];

  static final $core.List<RobotModeKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static RobotModeKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RobotModeKind._(super.value, super.name);
}

class RobotModeAvailability extends $pb.ProtobufEnum {
  static const RobotModeAvailability ROBOT_MODE_AVAILABILITY_UNKNOWN =
      RobotModeAvailability._(
          0, _omitEnumNames ? '' : 'ROBOT_MODE_AVAILABILITY_UNKNOWN');
  static const RobotModeAvailability ROBOT_MODE_AVAILABILITY_UNAVAILABLE =
      RobotModeAvailability._(
          1, _omitEnumNames ? '' : 'ROBOT_MODE_AVAILABILITY_UNAVAILABLE');
  static const RobotModeAvailability ROBOT_MODE_AVAILABILITY_AVAILABLE =
      RobotModeAvailability._(
          2, _omitEnumNames ? '' : 'ROBOT_MODE_AVAILABILITY_AVAILABLE');

  static const $core.List<RobotModeAvailability> values =
      <RobotModeAvailability>[
    ROBOT_MODE_AVAILABILITY_UNKNOWN,
    ROBOT_MODE_AVAILABILITY_UNAVAILABLE,
    ROBOT_MODE_AVAILABILITY_AVAILABLE,
  ];

  static final $core.List<RobotModeAvailability?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static RobotModeAvailability? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RobotModeAvailability._(super.value, super.name);
}

class RecoveryPhase extends $pb.ProtobufEnum {
  static const RecoveryPhase RECOVERY_PHASE_UNKNOWN =
      RecoveryPhase._(0, _omitEnumNames ? '' : 'RECOVERY_PHASE_UNKNOWN');
  static const RecoveryPhase RECOVERY_PHASE_DISABLED =
      RecoveryPhase._(1, _omitEnumNames ? '' : 'RECOVERY_PHASE_DISABLED');
  static const RecoveryPhase RECOVERY_PHASE_PREPARING =
      RecoveryPhase._(2, _omitEnumNames ? '' : 'RECOVERY_PHASE_PREPARING');
  static const RecoveryPhase RECOVERY_PHASE_WAITING =
      RecoveryPhase._(3, _omitEnumNames ? '' : 'RECOVERY_PHASE_WAITING');
  static const RecoveryPhase RECOVERY_PHASE_RECOVERING =
      RecoveryPhase._(4, _omitEnumNames ? '' : 'RECOVERY_PHASE_RECOVERING');
  static const RecoveryPhase RECOVERY_PHASE_BALANCED =
      RecoveryPhase._(5, _omitEnumNames ? '' : 'RECOVERY_PHASE_BALANCED');
  static const RecoveryPhase RECOVERY_PHASE_LOWERING =
      RecoveryPhase._(6, _omitEnumNames ? '' : 'RECOVERY_PHASE_LOWERING');
  static const RecoveryPhase RECOVERY_PHASE_PRONE_HOLD =
      RecoveryPhase._(7, _omitEnumNames ? '' : 'RECOVERY_PHASE_PRONE_HOLD');
  static const RecoveryPhase RECOVERY_PHASE_STAND_UP =
      RecoveryPhase._(8, _omitEnumNames ? '' : 'RECOVERY_PHASE_STAND_UP');
  static const RecoveryPhase RECOVERY_PHASE_STANDING =
      RecoveryPhase._(9, _omitEnumNames ? '' : 'RECOVERY_PHASE_STANDING');
  static const RecoveryPhase RECOVERY_PHASE_SIT_DOWN =
      RecoveryPhase._(10, _omitEnumNames ? '' : 'RECOVERY_PHASE_SIT_DOWN');
  static const RecoveryPhase RECOVERY_PHASE_GROUNDED =
      RecoveryPhase._(11, _omitEnumNames ? '' : 'RECOVERY_PHASE_GROUNDED');
  static const RecoveryPhase RECOVERY_PHASE_FAILED =
      RecoveryPhase._(12, _omitEnumNames ? '' : 'RECOVERY_PHASE_FAILED');

  static const $core.List<RecoveryPhase> values = <RecoveryPhase>[
    RECOVERY_PHASE_UNKNOWN,
    RECOVERY_PHASE_DISABLED,
    RECOVERY_PHASE_PREPARING,
    RECOVERY_PHASE_WAITING,
    RECOVERY_PHASE_RECOVERING,
    RECOVERY_PHASE_BALANCED,
    RECOVERY_PHASE_LOWERING,
    RECOVERY_PHASE_PRONE_HOLD,
    RECOVERY_PHASE_STAND_UP,
    RECOVERY_PHASE_STANDING,
    RECOVERY_PHASE_SIT_DOWN,
    RECOVERY_PHASE_GROUNDED,
    RECOVERY_PHASE_FAILED,
  ];

  static final $core.List<RecoveryPhase?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 12);
  static RecoveryPhase? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RecoveryPhase._(super.value, super.name);
}

class RecoveryActionDecision extends $pb.ProtobufEnum {
  static const RecoveryActionDecision RECOVERY_ACTION_DECISION_UNKNOWN =
      RecoveryActionDecision._(
          0, _omitEnumNames ? '' : 'RECOVERY_ACTION_DECISION_UNKNOWN');
  static const RecoveryActionDecision RECOVERY_ACTION_DECISION_ACCEPTED =
      RecoveryActionDecision._(
          1, _omitEnumNames ? '' : 'RECOVERY_ACTION_DECISION_ACCEPTED');
  static const RecoveryActionDecision RECOVERY_ACTION_DECISION_REJECTED =
      RecoveryActionDecision._(
          2, _omitEnumNames ? '' : 'RECOVERY_ACTION_DECISION_REJECTED');

  static const $core.List<RecoveryActionDecision> values =
      <RecoveryActionDecision>[
    RECOVERY_ACTION_DECISION_UNKNOWN,
    RECOVERY_ACTION_DECISION_ACCEPTED,
    RECOVERY_ACTION_DECISION_REJECTED,
  ];

  static final $core.List<RecoveryActionDecision?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static RecoveryActionDecision? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RecoveryActionDecision._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
