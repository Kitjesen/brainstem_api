// This is a generated file - do not edit.
//
// Generated from brainstem_api/recovery.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $1;

import 'recovery.pb.dart' as $0;

export 'recovery.pb.dart';

/// Candidate contract only: recovery is not a locomotion SwitchProfile request.
@$pb.GrpcServiceName('brainstem.api.v1.RobotRecovery')
class RobotRecoveryClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  RobotRecoveryClient(super.channel, {super.options, super.interceptors});

  /// Selecting recovery does not enable motors. Heartbeat every 100 ms; expiry is 300 ms.
  $grpc.ResponseFuture<$0.RecoveryStatus> enter(
    $0.RecoveryStartRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$enter, request, options: options);
  }

  $grpc.ResponseFuture<$0.RecoveryStatus> enable(
    $0.RecoverySessionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$enable, request, options: options);
  }

  $grpc.ResponseFuture<$0.RecoveryStatus> heartbeat(
    $0.RecoverySessionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$heartbeat, request, options: options);
  }

  $grpc.ResponseFuture<$0.RecoveryStatus> exit(
    $0.RecoverySessionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$exit, request, options: options);
  }

  $grpc.ResponseFuture<$0.RecoveryStatus> getStatus(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.RecoveryActionReply> start(
    $0.RecoveryStartRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$start, request, options: options);
  }

  $grpc.ResponseFuture<$0.RecoveryActionReply> cancel(
    $0.RecoveryCancelRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cancel, request, options: options);
  }

  // method descriptors

  static final _$enter =
      $grpc.ClientMethod<$0.RecoveryStartRequest, $0.RecoveryStatus>(
          '/brainstem.api.v1.RobotRecovery/Enter',
          ($0.RecoveryStartRequest value) => value.writeToBuffer(),
          $0.RecoveryStatus.fromBuffer);
  static final _$enable =
      $grpc.ClientMethod<$0.RecoverySessionRequest, $0.RecoveryStatus>(
          '/brainstem.api.v1.RobotRecovery/Enable',
          ($0.RecoverySessionRequest value) => value.writeToBuffer(),
          $0.RecoveryStatus.fromBuffer);
  static final _$heartbeat =
      $grpc.ClientMethod<$0.RecoverySessionRequest, $0.RecoveryStatus>(
          '/brainstem.api.v1.RobotRecovery/Heartbeat',
          ($0.RecoverySessionRequest value) => value.writeToBuffer(),
          $0.RecoveryStatus.fromBuffer);
  static final _$exit =
      $grpc.ClientMethod<$0.RecoverySessionRequest, $0.RecoveryStatus>(
          '/brainstem.api.v1.RobotRecovery/Exit',
          ($0.RecoverySessionRequest value) => value.writeToBuffer(),
          $0.RecoveryStatus.fromBuffer);
  static final _$getStatus = $grpc.ClientMethod<$1.Empty, $0.RecoveryStatus>(
      '/brainstem.api.v1.RobotRecovery/GetStatus',
      ($1.Empty value) => value.writeToBuffer(),
      $0.RecoveryStatus.fromBuffer);
  static final _$start =
      $grpc.ClientMethod<$0.RecoveryStartRequest, $0.RecoveryActionReply>(
          '/brainstem.api.v1.RobotRecovery/Start',
          ($0.RecoveryStartRequest value) => value.writeToBuffer(),
          $0.RecoveryActionReply.fromBuffer);
  static final _$cancel =
      $grpc.ClientMethod<$0.RecoveryCancelRequest, $0.RecoveryActionReply>(
          '/brainstem.api.v1.RobotRecovery/Cancel',
          ($0.RecoveryCancelRequest value) => value.writeToBuffer(),
          $0.RecoveryActionReply.fromBuffer);
}

@$pb.GrpcServiceName('brainstem.api.v1.RobotRecovery')
abstract class RobotRecoveryServiceBase extends $grpc.Service {
  $core.String get $name => 'brainstem.api.v1.RobotRecovery';

  RobotRecoveryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RecoveryStartRequest, $0.RecoveryStatus>(
        'Enter',
        enter_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RecoveryStartRequest.fromBuffer(value),
        ($0.RecoveryStatus value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RecoverySessionRequest, $0.RecoveryStatus>(
            'Enable',
            enable_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RecoverySessionRequest.fromBuffer(value),
            ($0.RecoveryStatus value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RecoverySessionRequest, $0.RecoveryStatus>(
            'Heartbeat',
            heartbeat_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RecoverySessionRequest.fromBuffer(value),
            ($0.RecoveryStatus value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RecoverySessionRequest, $0.RecoveryStatus>(
            'Exit',
            exit_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RecoverySessionRequest.fromBuffer(value),
            ($0.RecoveryStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.RecoveryStatus>(
        'GetStatus',
        getStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.RecoveryStatus value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RecoveryStartRequest, $0.RecoveryActionReply>(
            'Start',
            start_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RecoveryStartRequest.fromBuffer(value),
            ($0.RecoveryActionReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RecoveryCancelRequest, $0.RecoveryActionReply>(
            'Cancel',
            cancel_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RecoveryCancelRequest.fromBuffer(value),
            ($0.RecoveryActionReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.RecoveryStatus> enter_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RecoveryStartRequest> $request) async {
    return enter($call, await $request);
  }

  $async.Future<$0.RecoveryStatus> enter(
      $grpc.ServiceCall call, $0.RecoveryStartRequest request);

  $async.Future<$0.RecoveryStatus> enable_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RecoverySessionRequest> $request) async {
    return enable($call, await $request);
  }

  $async.Future<$0.RecoveryStatus> enable(
      $grpc.ServiceCall call, $0.RecoverySessionRequest request);

  $async.Future<$0.RecoveryStatus> heartbeat_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RecoverySessionRequest> $request) async {
    return heartbeat($call, await $request);
  }

  $async.Future<$0.RecoveryStatus> heartbeat(
      $grpc.ServiceCall call, $0.RecoverySessionRequest request);

  $async.Future<$0.RecoveryStatus> exit_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RecoverySessionRequest> $request) async {
    return exit($call, await $request);
  }

  $async.Future<$0.RecoveryStatus> exit(
      $grpc.ServiceCall call, $0.RecoverySessionRequest request);

  $async.Future<$0.RecoveryStatus> getStatus_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return getStatus($call, await $request);
  }

  $async.Future<$0.RecoveryStatus> getStatus(
      $grpc.ServiceCall call, $1.Empty request);

  $async.Future<$0.RecoveryActionReply> start_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RecoveryStartRequest> $request) async {
    return start($call, await $request);
  }

  $async.Future<$0.RecoveryActionReply> start(
      $grpc.ServiceCall call, $0.RecoveryStartRequest request);

  $async.Future<$0.RecoveryActionReply> cancel_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RecoveryCancelRequest> $request) async {
    return cancel($call, await $request);
  }

  $async.Future<$0.RecoveryActionReply> cancel(
      $grpc.ServiceCall call, $0.RecoveryCancelRequest request);
}
