// SPDX-FileCopyrightText: 2025 basysKom GmbH
// SPDX-FileContributor: Benjamin Meier <benjamin.meier@basyskom.com>
//
// SPDX-License-Identifier: MIT

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:example_flutter_grpc_security/screens/login_screen.dart';

late final ByteData serverCertificate;
Future<ByteData> readCertificateFromAssets() async {
  try {
    final trustedRoot = await rootBundle.load('assets/cert.pem');
    return trustedRoot;
  } catch (e) {
    print('Unable to read cert.pem: $e');
    rethrow;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    serverCertificate = await readCertificateFromAssets();
    print('Read certificate from assets');
  } catch (e) {
    print('Failed to read certificate: $e');
  }

  runApp(App(serverCertificate: serverCertificate));
}

class App extends StatelessWidget {
  const App({
    required this.serverCertificate,
    super.key,
  });

  final ByteData serverCertificate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter grpc Security Demo',
      home: LoginScreen(serverCertificate: serverCertificate),
    );
  }
}
