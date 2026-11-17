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

import 'recovery.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'recovery.pbenum.dart';

class RobotModeCapability extends $pb.GeneratedMessage {
  factory RobotModeCapability({
    $core.String? id,
    RobotModeKind? kind,
    RobotModeAvailability? availability,
    $core.String? profileId,
    $core.String? unavailableReason,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (kind != null) result.kind = kind;
    if (availability != null) result.availability = availability;
    if (profileId != null) result.profileId = profileId;
    if (unavailableReason != null) result.unavailableReason = unavailableReason;
    return result;
  }

  RobotModeCapability._();

  factory RobotModeCapability.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RobotModeCapability.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RobotModeCapability',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'brainstem.api.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aE<RobotModeKind>(2, _omitFieldNames ? '' : 'kind',
        enumValues: RobotModeKind.values)
    ..aE<RobotModeAvailability>(3, _omitFieldNames ? '' : 'availability',
        enumValues: RobotModeAvailability.values)
    ..aOS(4, _omitFieldNames ? '' : 'profileId')
    ..aOS(5, _omitFieldNames ? '' : 'unavailableReason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RobotModeCapability clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RobotModeCapability copyWith(void Function(RobotModeCapability) updates) =>
      super.copyWith((message) => updates(message as RobotModeCapability))
          as RobotModeCapability;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RobotModeCapability create() => RobotModeCapability._();
  @$core.override
  RobotModeCapability createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RobotModeCapability getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RobotModeCapability>(create);
  static RobotModeCapability? _defaultInstance;

  /// Stable operator key: flat, stairs, platform or recovery.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  RobotModeKind get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind(RobotModeKind value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  @$pb.TagNumber(3)
  RobotModeAvailability get availability => $_getN(2);
  @$pb.TagNumber(3)
  set availability(RobotModeAvailability value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAvailability() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvailability() => $_clearField(3);

  /// Actual profile ID only for locomotion; empty for recovery.
  @$pb.TagNumber(4)
  $core.String get profileId => $_getSZ(3);
  @$pb.TagNumber(4)
  set profileId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasProfileId() => $_has(3);
  @$pb.TagNumber(4)
  void clearProfileId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get unavailableReason => $_getSZ(4);
  @$pb.TagNumber(5)
  set unavailableReason($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUnavailableReason() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnavailableReason() => $_clearField(5);
}

class RecoveryStatus extends $pb.GeneratedMessage {
  factory RecoveryStatus({
    RobotModeAvailability? availability,
    RecoveryPhase? phase,
    $core.String? operationId,
    $core.String? unavailableReason,
    $core.bool? selected,
    $core.String? sessionToken,
    $core.bool? motorDisableConfirmed,
  }) {
    final result = create();
    if (availability != null) result.availability = availability;
    if (phase != null) result.phase = phase;
    if (operationId != null) result.operationId = operationId;
    if (unavailableReason != null) result.unavailableReason = unavailableReason;
    if (selected != null) result.selected = selected;
    if (sessionToken != null) result.sessionToken = sessionToken;
    if (motorDisableConfirmed != null)
      result.motorDisableConfirmed = motorDisableConfirmed;
    return result;
  }

  RecoveryStatus._();

  factory RecoveryStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecoveryStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecoveryStatus',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'brainstem.api.v1'),
      createEmptyInstance: create)
    ..aE<RobotModeAvailability>(1, _omitFieldNames ? '' : 'availability',
        enumValues: RobotModeAvailability.values)
    ..aE<RecoveryPhase>(2, _omitFieldNames ? '' : 'phase',
        enumValues: RecoveryPhase.values)
    ..aOS(3, _omitFieldNames ? '' : 'operationId')
    ..aOS(4, _omitFieldNames ? '' : 'unavailableReason')
    ..aOB(5, _omitFieldNames ? '' : 'selected')
    ..aOS(6, _omitFieldNames ? '' : 'sessionToken')
    ..aOB(7, _omitFieldNames ? '' : 'motorDisableConfirmed')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryStatus copyWith(void Function(RecoveryStatus) updates) =>
      super.copyWith((message) => updates(message as RecoveryStatus))
          as RecoveryStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoveryStatus create() => RecoveryStatus._();
  @$core.override
  RecoveryStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecoveryStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecoveryStatus>(create);
  static RecoveryStatus? _defaultInstance;

  @$pb.TagNumber(1)
  RobotModeAvailability get availability => $_getN(0);
  @$pb.TagNumber(1)
  set availability(RobotModeAvailability value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAvailability() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvailability() => $_clearField(1);

  @$pb.TagNumber(2)
  RecoveryPhase get phase => $_getN(1);
  @$pb.TagNumber(2)
  set phase(RecoveryPhase value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPhase() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhase() => $_clearField(2);

  /// Empty if no operation is known. Not an indication of physical completion.
  @$pb.TagNumber(3)
  $core.String get operationId => $_getSZ(2);
  @$pb.TagNumber(3)
  set operationId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOperationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get unavailableReason => $_getSZ(3);
  @$pb.TagNumber(4)
  set unavailableReason($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUnavailableReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnavailableReason() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get selected => $_getBF(4);
  @$pb.TagNumber(5)
  set selected($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSelected() => $_has(4);
  @$pb.TagNumber(5)
  void clearSelected() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get sessionToken => $_getSZ(5);
  @$pb.TagNumber(6)
  set sessionToken($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSessionToken() => $_has(5);
  @$pb.TagNumber(6)
  void clearSessionToken() => $_clearField(6);

  /// Motor status acknowledgement only; not proof that the body has stopped moving.
  @$pb.TagNumber(7)
  $core.bool get motorDisableConfirmed => $_getBF(6);
  @$pb.TagNumber(7)
  set motorDisableConfirmed($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMotorDisableConfirmed() => $_has(6);
  @$pb.TagNumber(7)
  void clearMotorDisableConfirmed() => $_clearField(7);
}

class RecoverySessionRequest extends $pb.GeneratedMessage {
  factory RecoverySessionRequest({
    $core.String? sessionToken,
  }) {
    final result = create();
    if (sessionToken != null) result.sessionToken = sessionToken;
    return result;
  }

  RecoverySessionRequest._();

  factory RecoverySessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecoverySessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecoverySessionRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'brainstem.api.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoverySessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoverySessionRequest copyWith(
          void Function(RecoverySessionRequest) updates) =>
      super.copyWith((message) => updates(message as RecoverySessionRequest))
          as RecoverySessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoverySessionRequest create() => RecoverySessionRequest._();
  @$core.override
  RecoverySessionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecoverySessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecoverySessionRequest>(create);
  static RecoverySessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionToken($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionToken() => $_clearField(1);
}

class RecoveryStartRequest extends $pb.GeneratedMessage {
  factory RecoveryStartRequest({
    $core.String? operationId,
    $core.String? sessionToken,
  }) {
    final result = create();
    if (operationId != null) result.operationId = operationId;
    if (sessionToken != null) result.sessionToken = sessionToken;
    return result;
  }

  RecoveryStartRequest._();

  factory RecoveryStartRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecoveryStartRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecoveryStartRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'brainstem.api.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'operationId')
    ..aOS(2, _omitFieldNames ? '' : 'sessionToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryStartRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryStartRequest copyWith(void Function(RecoveryStartRequest) updates) =>
      super.copyWith((message) => updates(message as RecoveryStartRequest))
          as RecoveryStartRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoveryStartRequest create() => RecoveryStartRequest._();
  @$core.override
  RecoveryStartRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecoveryStartRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecoveryStartRequest>(create);
  static RecoveryStartRequest? _defaultInstance;

  /// Unique per intended action, scoped to authenticated operator and session.
  @$pb.TagNumber(1)
  $core.String get operationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set operationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionToken() => $_clearField(2);
}

class RecoveryCancelRequest extends $pb.GeneratedMessage {
  factory RecoveryCancelRequest({
    $core.String? operationId,
    $core.String? sessionToken,
  }) {
    final result = create();
    if (operationId != null) result.operationId = operationId;
    if (sessionToken != null) result.sessionToken = sessionToken;
    return result;
  }

  RecoveryCancelRequest._();

  factory RecoveryCancelRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecoveryCancelRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecoveryCancelRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'brainstem.api.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'operationId')
    ..aOS(2, _omitFieldNames ? '' : 'sessionToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryCancelRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryCancelRequest copyWith(
          void Function(RecoveryCancelRequest) updates) =>
      super.copyWith((message) => updates(message as RecoveryCancelRequest))
          as RecoveryCancelRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoveryCancelRequest create() => RecoveryCancelRequest._();
  @$core.override
  RecoveryCancelRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecoveryCancelRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecoveryCancelRequest>(create);
  static RecoveryCancelRequest? _defaultInstance;

  /// Refers to the original action; never creates a new recovery action.
  @$pb.TagNumber(1)
  $core.String get operationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set operationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionToken() => $_clearField(2);
}

class RecoveryActionReply extends $pb.GeneratedMessage {
  factory RecoveryActionReply({
    $core.String? operationId,
    RecoveryActionDecision? decision,
    RecoveryPhase? phase,
    $core.String? reason,
  }) {
    final result = create();
    if (operationId != null) result.operationId = operationId;
    if (decision != null) result.decision = decision;
    if (phase != null) result.phase = phase;
    if (reason != null) result.reason = reason;
    return result;
  }

  RecoveryActionReply._();

  factory RecoveryActionReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecoveryActionReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecoveryActionReply',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'brainstem.api.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'operationId')
    ..aE<RecoveryActionDecision>(2, _omitFieldNames ? '' : 'decision',
        enumValues: RecoveryActionDecision.values)
    ..aE<RecoveryPhase>(3, _omitFieldNames ? '' : 'phase',
        enumValues: RecoveryPhase.values)
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryActionReply clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryActionReply copyWith(void Function(RecoveryActionReply) updates) =>
      super.copyWith((message) => updates(message as RecoveryActionReply))
          as RecoveryActionReply;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoveryActionReply create() => RecoveryActionReply._();
  @$core.override
  RecoveryActionReply createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecoveryActionReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecoveryActionReply>(create);
  static RecoveryActionReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get operationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set operationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationId() => $_clearField(1);

  @$pb.TagNumber(2)
  RecoveryActionDecision get decision => $_getN(1);
  @$pb.TagNumber(2)
  set decision(RecoveryActionDecision value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDecision() => $_has(1);
  @$pb.TagNumber(2)
  void clearDecision() => $_clearField(2);

  @$pb.TagNumber(3)
  RecoveryPhase get phase => $_getN(2);
  @$pb.TagNumber(3)
  set phase(RecoveryPhase value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPhase() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhase() => $_clearField(3);

  /// An accepted request is not physical completion or confirmed stopping.
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
