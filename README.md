# example_flutter_grpc_security

This is the demo project for our blog article
"Setting up Flutter and gRPC with TLS and token-based authentication".

- This demo project consists of 3 parts
    - The client / the main project
    - The grpc interface: `packages/grpc_interface`
    - A test server: `packages/test_server`

## Get it up and running

- Create the server certificate: Use the `gen_cert` command in `packages/test_server/Makefile`
- Run the server: Run `dart run` in `packages/test_server`
- Run the client: Run `flutter run` in `./`

## Development setup

Tested with:

```
> flutter --version
Flutter 3.24.2 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 4cf269e36d • 2024-09-03 14:30:00 -0700
Engine • revision a6bd3f1de1
Tools • Dart 3.5.2 • DevTools 2.37.2
```
