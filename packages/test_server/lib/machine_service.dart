import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:grpc_interface/generated/machine.pbgrpc.dart';
import 'package:test_server/machine.dart';

class MachineService extends GrpcMachineServiceBase {
  MachineService({required this.machine});

  final Machine machine;

  @override
  Future<GrpcStartMachineReply> startMachine(
    ServiceCall call,
    GrpcStartMachineRequest request,
  ) async {
    machine.start();
    return GrpcStartMachineReply(success: true);
  }
}
