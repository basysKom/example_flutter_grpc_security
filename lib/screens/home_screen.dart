// SPDX-FileCopyrightText: 2025 basysKom GmbH
// SPDX-FileContributor: Benjamin Meier <benjamin.meier@basyskom.com>
//
// SPDX-License-Identifier: MIT

import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:example_flutter_grpc_security/utils.dart';
import 'package:grpc_interface/generated/machine.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    required this.serverCertificate,
    required this.token,
    super.key,
  });

  final String token;
  final ByteData serverCertificate;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GrpcMachineClient _grpcClient;

  List<String> _roles = [];
  String _statusText = '';

  @override
  void initState() {
    super.initState();

    _grpcClient = initClient(widget.serverCertificate);
    print('Created GrpcMachineClient');

    try {
      var jwtPayload = JWT.decode(widget.token).payload as Map<String, dynamic>;
      _roles = List<String>.from(jwtPayload['roles']);
    } catch (e) {
      print('Error while processing jwt payload: $e');
    }
  }

  GrpcMachineClient initClient(ByteData server) {
    return GrpcMachineClient(
      ClientChannel(
        grpcHost,
        port: grpcPort,
        options: ChannelOptions(
          credentials: ChannelCredentials.secure(
            certificates: widget.serverCertificate.buffer.asUint8List(),
            authority: grpcHost,
          ),
        ),
      ),
      options: CallOptions(metadata: {'token': widget.token}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 80.0,
            vertical: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (_roles.contains('admin'))
                ElevatedButton(
                  onPressed: () async {
                    try {
                      var response = await _grpcClient
                          .startMachine(GrpcStartMachineRequest());
                      _statusText = response.success
                          ? 'Machine started'
                          : 'Machine NOT started';
                    } on GrpcError catch (grpcError) {
                      print('GrpcError: $grpcError');
                      _statusText = switch (grpcError.code) {
                        StatusCode.unauthenticated => 'No valid token!',
                        _ => 'GrpcError: ${grpcError.codeName}',
                      };
                    } catch (e) {
                      print('Error: $e');
                      _statusText = 'Unhandled error while starting machine';
                    }

                    setState(() {});
                  },
                  child: Text('Start machine'),
                ),
              SizedBox(height: 12.0),
              Text(_statusText, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
