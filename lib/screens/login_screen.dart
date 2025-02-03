// SPDX-FileCopyrightText: 2025 basysKom GmbH
// SPDX-FileContributor: Benjamin Meier <benjamin.meier@basyskom.com>
//
// SPDX-License-Identifier: MIT

import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:example_flutter_grpc_security/main.dart';
import 'package:example_flutter_grpc_security/screens/home_screen.dart';
import 'package:example_flutter_grpc_security/utils.dart';
import 'package:grpc_interface/generated/authentication.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    required this.serverCertificate,
    super.key,
  });

  final ByteData serverCertificate;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userController = TextEditingController(text: 'demoUser');
  final _passwordController = TextEditingController(text: 'demoPassword');

  late GrpcAuthenticationClient _grpcClient;

  @override
  void initState() {
    super.initState();

    _grpcClient = initClient(widget.serverCertificate);
    print('Created GrpcAuthenticationClient');
  }

  Future<void> login(
    BuildContext context, {
    required String username,
    required String password,
  }) async {
    print('Try login for $username');

    try {
      var response = await _grpcClient.login(
        GrpcLoginRequest(
          username: username,
          password: password,
        ),
      );
      if (response.success) {
        var token = response.token;
        print('Login successful, got token: $token');
        if (context.mounted) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(
                serverCertificate: serverCertificate,
                token: token,
              ),
            ),
          );
        }
      } else {
        print('Login unsuccessful');
      }
    } catch (e) {
      print('Login failed: $e');
    }
  }

  GrpcAuthenticationClient initClient(ByteData serverCertificate) {
    return GrpcAuthenticationClient(
      ClientChannel(
        grpcHost,
        port: grpcPort,
        options: ChannelOptions(
          credentials: ChannelCredentials.secure(
            certificates: serverCertificate.buffer.asUint8List(),
            authority: grpcHost,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 80.0,
            vertical: 10.0,
          ),
          child: Column(
            children: [
              TextField(controller: _userController),
              SizedBox(height: 12.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () => login(
                  context,
                  username: _userController.text,
                  password: _passwordController.text,
                ),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
