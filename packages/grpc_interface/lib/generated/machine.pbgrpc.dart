//
//  Generated code. Do not modify.
//  source: machine.proto
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

import 'machine.pb.dart' as $0;

export 'machine.pb.dart';

@$pb.GrpcServiceName('example_flutter_grpc_security.GrpcMachine')
class GrpcMachineClient extends $grpc.Client {
  static final _$startMachine =
      $grpc.ClientMethod<$0.GrpcStartMachineRequest, $0.GrpcStartMachineReply>(
          '/example_flutter_grpc_security.GrpcMachine/StartMachine',
          ($0.GrpcStartMachineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GrpcStartMachineReply.fromBuffer(value));

  GrpcMachineClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GrpcStartMachineReply> startMachine(
      $0.GrpcStartMachineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startMachine, request, options: options);
  }
}

@$pb.GrpcServiceName('example_flutter_grpc_security.GrpcMachine')
abstract class GrpcMachineServiceBase extends $grpc.Service {
  $core.String get $name => 'example_flutter_grpc_security.GrpcMachine';

  GrpcMachineServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GrpcStartMachineRequest,
            $0.GrpcStartMachineReply>(
        'StartMachine',
        startMachine_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GrpcStartMachineRequest.fromBuffer(value),
        ($0.GrpcStartMachineReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.GrpcStartMachineReply> startMachine_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GrpcStartMachineRequest> request) async {
    return startMachine(call, await request);
  }

  $async.Future<$0.GrpcStartMachineReply> startMachine(
      $grpc.ServiceCall call, $0.GrpcStartMachineRequest request);
}
