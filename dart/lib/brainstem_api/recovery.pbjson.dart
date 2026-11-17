// This is a generated file - do not edit.
//
// Generated from brainstem_api/recovery.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use robotModeKindDescriptor instead')
const RobotModeKind$json = {
  '1': 'RobotModeKind',
  '2': [
    {'1': 'ROBOT_MODE_KIND_UNKNOWN', '2': 0},
    {'1': 'ROBOT_MODE_KIND_LOCOMOTION_PROFILE', '2': 1},
    {'1': 'ROBOT_MODE_KIND_RECOVERY_ACTION', '2': 2},
  ],
};

/// Descriptor for `RobotModeKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List robotModeKindDescriptor = $convert.base64Decode(
    'Cg1Sb2JvdE1vZGVLaW5kEhsKF1JPQk9UX01PREVfS0lORF9VTktOT1dOEAASJgoiUk9CT1RfTU'
    '9ERV9LSU5EX0xPQ09NT1RJT05fUFJPRklMRRABEiMKH1JPQk9UX01PREVfS0lORF9SRUNPVkVS'
    'WV9BQ1RJT04QAg==');

@$core.Deprecated('Use robotModeAvailabilityDescriptor instead')
const RobotModeAvailability$json = {
  '1': 'RobotModeAvailability',
  '2': [
    {'1': 'ROBOT_MODE_AVAILABILITY_UNKNOWN', '2': 0},
    {'1': 'ROBOT_MODE_AVAILABILITY_UNAVAILABLE', '2': 1},
    {'1': 'ROBOT_MODE_AVAILABILITY_AVAILABLE', '2': 2},
  ],
};

/// Descriptor for `RobotModeAvailability`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List robotModeAvailabilityDescriptor = $convert.base64Decode(
    'ChVSb2JvdE1vZGVBdmFpbGFiaWxpdHkSIwofUk9CT1RfTU9ERV9BVkFJTEFCSUxJVFlfVU5LTk'
    '9XThAAEicKI1JPQk9UX01PREVfQVZBSUxBQklMSVRZX1VOQVZBSUxBQkxFEAESJQohUk9CT1Rf'
    'TU9ERV9BVkFJTEFCSUxJVFlfQVZBSUxBQkxFEAI=');

@$core.Deprecated('Use recoveryPhaseDescriptor instead')
const RecoveryPhase$json = {
  '1': 'RecoveryPhase',
  '2': [
    {'1': 'RECOVERY_PHASE_UNKNOWN', '2': 0},
    {'1': 'RECOVERY_PHASE_DISABLED', '2': 1},
    {'1': 'RECOVERY_PHASE_PREPARING', '2': 2},
    {'1': 'RECOVERY_PHASE_WAITING', '2': 3},
    {'1': 'RECOVERY_PHASE_RECOVERING', '2': 4},
    {'1': 'RECOVERY_PHASE_BALANCED', '2': 5},
    {'1': 'RECOVERY_PHASE_LOWERING', '2': 6},
    {'1': 'RECOVERY_PHASE_PRONE_HOLD', '2': 7},
    {'1': 'RECOVERY_PHASE_STAND_UP', '2': 8},
    {'1': 'RECOVERY_PHASE_STANDING', '2': 9},
    {'1': 'RECOVERY_PHASE_SIT_DOWN', '2': 10},
    {'1': 'RECOVERY_PHASE_GROUNDED', '2': 11},
    {'1': 'RECOVERY_PHASE_FAILED', '2': 12},
  ],
};

/// Descriptor for `RecoveryPhase`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List recoveryPhaseDescriptor = $convert.base64Decode(
    'Cg1SZWNvdmVyeVBoYXNlEhoKFlJFQ09WRVJZX1BIQVNFX1VOS05PV04QABIbChdSRUNPVkVSWV'
    '9QSEFTRV9ESVNBQkxFRBABEhwKGFJFQ09WRVJZX1BIQVNFX1BSRVBBUklORxACEhoKFlJFQ09W'
    'RVJZX1BIQVNFX1dBSVRJTkcQAxIdChlSRUNPVkVSWV9QSEFTRV9SRUNPVkVSSU5HEAQSGwoXUk'
    'VDT1ZFUllfUEhBU0VfQkFMQU5DRUQQBRIbChdSRUNPVkVSWV9QSEFTRV9MT1dFUklORxAGEh0K'
    'GVJFQ09WRVJZX1BIQVNFX1BST05FX0hPTEQQBxIbChdSRUNPVkVSWV9QSEFTRV9TVEFORF9VUB'
    'AIEhsKF1JFQ09WRVJZX1BIQVNFX1NUQU5ESU5HEAkSGwoXUkVDT1ZFUllfUEhBU0VfU0lUX0RP'
    'V04QChIbChdSRUNPVkVSWV9QSEFTRV9HUk9VTkRFRBALEhkKFVJFQ09WRVJZX1BIQVNFX0ZBSU'
    'xFRBAM');

@$core.Deprecated('Use recoveryActionDecisionDescriptor instead')
const RecoveryActionDecision$json = {
  '1': 'RecoveryActionDecision',
  '2': [
    {'1': 'RECOVERY_ACTION_DECISION_UNKNOWN', '2': 0},
    {'1': 'RECOVERY_ACTION_DECISION_ACCEPTED', '2': 1},
    {'1': 'RECOVERY_ACTION_DECISION_REJECTED', '2': 2},
  ],
};

/// Descriptor for `RecoveryActionDecision`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List recoveryActionDecisionDescriptor = $convert.base64Decode(
    'ChZSZWNvdmVyeUFjdGlvbkRlY2lzaW9uEiQKIFJFQ09WRVJZX0FDVElPTl9ERUNJU0lPTl9VTk'
    'tOT1dOEAASJQohUkVDT1ZFUllfQUNUSU9OX0RFQ0lTSU9OX0FDQ0VQVEVEEAESJQohUkVDT1ZF'
    'UllfQUNUSU9OX0RFQ0lTSU9OX1JFSkVDVEVEEAI=');

@$core.Deprecated('Use robotModeCapabilityDescriptor instead')
const RobotModeCapability$json = {
  '1': 'RobotModeCapability',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'kind',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.brainstem.api.v1.RobotModeKind',
      '10': 'kind'
    },
    {
      '1': 'availability',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.brainstem.api.v1.RobotModeAvailability',
      '10': 'availability'
    },
    {'1': 'profile_id', '3': 4, '4': 1, '5': 9, '10': 'profileId'},
    {
      '1': 'unavailable_reason',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'unavailableReason'
    },
  ],
};

/// Descriptor for `RobotModeCapability`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List robotModeCapabilityDescriptor = $convert.base64Decode(
    'ChNSb2JvdE1vZGVDYXBhYmlsaXR5Eg4KAmlkGAEgASgJUgJpZBIzCgRraW5kGAIgASgOMh8uYn'
    'JhaW5zdGVtLmFwaS52MS5Sb2JvdE1vZGVLaW5kUgRraW5kEksKDGF2YWlsYWJpbGl0eRgDIAEo'
    'DjInLmJyYWluc3RlbS5hcGkudjEuUm9ib3RNb2RlQXZhaWxhYmlsaXR5UgxhdmFpbGFiaWxpdH'
    'kSHQoKcHJvZmlsZV9pZBgEIAEoCVIJcHJvZmlsZUlkEi0KEnVuYXZhaWxhYmxlX3JlYXNvbhgF'
    'IAEoCVIRdW5hdmFpbGFibGVSZWFzb24=');

@$core.Deprecated('Use recoveryStatusDescriptor instead')
const RecoveryStatus$json = {
  '1': 'RecoveryStatus',
  '2': [
    {
      '1': 'availability',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.brainstem.api.v1.RobotModeAvailability',
      '10': 'availability'
    },
    {
      '1': 'phase',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.brainstem.api.v1.RecoveryPhase',
      '10': 'phase'
    },
    {'1': 'operation_id', '3': 3, '4': 1, '5': 9, '10': 'operationId'},
    {
      '1': 'unavailable_reason',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'unavailableReason'
    },
    {'1': 'selected', '3': 5, '4': 1, '5': 8, '10': 'selected'},
    {'1': 'session_token', '3': 6, '4': 1, '5': 9, '10': 'sessionToken'},
    {
      '1': 'motor_disable_confirmed',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'motorDisableConfirmed'
    },
  ],
};

/// Descriptor for `RecoveryStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoveryStatusDescriptor = $convert.base64Decode(
    'Cg5SZWNvdmVyeVN0YXR1cxJLCgxhdmFpbGFiaWxpdHkYASABKA4yJy5icmFpbnN0ZW0uYXBpLn'
    'YxLlJvYm90TW9kZUF2YWlsYWJpbGl0eVIMYXZhaWxhYmlsaXR5EjUKBXBoYXNlGAIgASgOMh8u'
    'YnJhaW5zdGVtLmFwaS52MS5SZWNvdmVyeVBoYXNlUgVwaGFzZRIhCgxvcGVyYXRpb25faWQYAy'
    'ABKAlSC29wZXJhdGlvbklkEi0KEnVuYXZhaWxhYmxlX3JlYXNvbhgEIAEoCVIRdW5hdmFpbGFi'
    'bGVSZWFzb24SGgoIc2VsZWN0ZWQYBSABKAhSCHNlbGVjdGVkEiMKDXNlc3Npb25fdG9rZW4YBi'
    'ABKAlSDHNlc3Npb25Ub2tlbhI2Chdtb3Rvcl9kaXNhYmxlX2NvbmZpcm1lZBgHIAEoCFIVbW90'
    'b3JEaXNhYmxlQ29uZmlybWVk');

@$core.Deprecated('Use recoverySessionRequestDescriptor instead')
const RecoverySessionRequest$json = {
  '1': 'RecoverySessionRequest',
  '2': [
    {'1': 'session_token', '3': 1, '4': 1, '5': 9, '10': 'sessionToken'},
  ],
};

/// Descriptor for `RecoverySessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoverySessionRequestDescriptor =
    $convert.base64Decode(
        'ChZSZWNvdmVyeVNlc3Npb25SZXF1ZXN0EiMKDXNlc3Npb25fdG9rZW4YASABKAlSDHNlc3Npb2'
        '5Ub2tlbg==');

@$core.Deprecated('Use recoveryStartRequestDescriptor instead')
const RecoveryStartRequest$json = {
  '1': 'RecoveryStartRequest',
  '2': [
    {'1': 'operation_id', '3': 1, '4': 1, '5': 9, '10': 'operationId'},
    {'1': 'session_token', '3': 2, '4': 1, '5': 9, '10': 'sessionToken'},
  ],
};

/// Descriptor for `RecoveryStartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoveryStartRequestDescriptor = $convert.base64Decode(
    'ChRSZWNvdmVyeVN0YXJ0UmVxdWVzdBIhCgxvcGVyYXRpb25faWQYASABKAlSC29wZXJhdGlvbk'
    'lkEiMKDXNlc3Npb25fdG9rZW4YAiABKAlSDHNlc3Npb25Ub2tlbg==');

@$core.Deprecated('Use recoveryCancelRequestDescriptor instead')
const RecoveryCancelRequest$json = {
  '1': 'RecoveryCancelRequest',
  '2': [
    {'1': 'operation_id', '3': 1, '4': 1, '5': 9, '10': 'operationId'},
    {'1': 'session_token', '3': 2, '4': 1, '5': 9, '10': 'sessionToken'},
  ],
};

/// Descriptor for `RecoveryCancelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoveryCancelRequestDescriptor = $convert.base64Decode(
    'ChVSZWNvdmVyeUNhbmNlbFJlcXVlc3QSIQoMb3BlcmF0aW9uX2lkGAEgASgJUgtvcGVyYXRpb2'
    '5JZBIjCg1zZXNzaW9uX3Rva2VuGAIgASgJUgxzZXNzaW9uVG9rZW4=');

@$core.Deprecated('Use recoveryActionReplyDescriptor instead')
const RecoveryActionReply$json = {
  '1': 'RecoveryActionReply',
  '2': [
    {'1': 'operation_id', '3': 1, '4': 1, '5': 9, '10': 'operationId'},
    {
      '1': 'decision',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.brainstem.api.v1.RecoveryActionDecision',
      '10': 'decision'
    },
    {
      '1': 'phase',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.brainstem.api.v1.RecoveryPhase',
      '10': 'phase'
    },
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `RecoveryActionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoveryActionReplyDescriptor = $convert.base64Decode(
    'ChNSZWNvdmVyeUFjdGlvblJlcGx5EiEKDG9wZXJhdGlvbl9pZBgBIAEoCVILb3BlcmF0aW9uSW'
    'QSRAoIZGVjaXNpb24YAiABKA4yKC5icmFpbnN0ZW0uYXBpLnYxLlJlY292ZXJ5QWN0aW9uRGVj'
    'aXNpb25SCGRlY2lzaW9uEjUKBXBoYXNlGAMgASgOMh8uYnJhaW5zdGVtLmFwaS52MS5SZWNvdm'
    'VyeVBoYXNlUgVwaGFzZRIWCgZyZWFzb24YBCABKAlSBnJlYXNvbg==');
