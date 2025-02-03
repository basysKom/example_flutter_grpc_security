//
//  Generated code. Do not modify.
//  source: authentication.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'authentication.pb.dart' as $0;

export 'authentication.pb.dart';

@$pb.GrpcServiceName('example_flutter_grpc_security.GrpcAuthentication')
class GrpcAuthenticationClient extends $grpc.Client {
  static final _$login =
      $grpc.ClientMethod<$0.GrpcLoginRequest, $0.GrpcLoginRequestReply>(
          '/example_flutter_grpc_security.GrpcAuthentication/Login',
          ($0.GrpcLoginRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GrpcLoginRequestReply.fromBuffer(value));

  GrpcAuthenticationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GrpcLoginRequestReply> login(
      $0.GrpcLoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }
}

@$pb.GrpcServiceName('example_flutter_grpc_security.GrpcAuthentication')
abstract class GrpcAuthenticationServiceBase extends $grpc.Service {
  $core.String get $name => 'example_flutter_grpc_security.GrpcAuthentication';

  GrpcAuthenticationServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GrpcLoginRequest, $0.GrpcLoginRequestReply>(
            'Login',
            login_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GrpcLoginRequest.fromBuffer(value),
            ($0.GrpcLoginRequestReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.GrpcLoginRequestReply> login_Pre($grpc.ServiceCall call,
      $async.Future<$0.GrpcLoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.GrpcLoginRequestReply> login(
      $grpc.ServiceCall call, $0.GrpcLoginRequest request);
}
