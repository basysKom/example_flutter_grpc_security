import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:test_server/authentication_service.dart';
import 'package:test_server/machine_service.dart';
import 'package:test_server/machine.dart';
import 'package:test_server/utils.dart';

Future<void> main(List<String> args) async {
  late Uint8List serverCrt;
  late Uint8List serverKey;
  try {
    serverCrt = File('../../assets/cert.pem').readAsBytesSync();
    serverKey = File('key.pem').readAsBytesSync();
  } catch (e) {
    print('Error: Unable to read certificate or private key');
    return;
  }

  final serverCredentials = ServerTlsCredentials(
    certificate: serverCrt,
    privateKey: serverKey,
  );

  final server = Server.create(
    services: [
      MachineService(machine: Machine()),
      AuthenticationService(),
    ],
    codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    interceptors: [authInterceptor],
  );

  await server.serve(
    port: 50051,
    security: serverCredentials,
  );

  print('test_server listening on port ${server.port}...');
}
