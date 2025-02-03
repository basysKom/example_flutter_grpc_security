import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:grpc_interface/generated/authentication.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:test_server/utils.dart';

class AuthenticationService extends GrpcAuthenticationServiceBase {
  @override
  Future<GrpcLoginRequestReply> login(
    ServiceCall call,
    GrpcLoginRequest request,
  ) {
    if (isValid(request.username, request.password)) {
      final response = GrpcLoginRequestReply(
        success: true,
        token: generateJwt(
          username: request.username,
          roles: ['admin', 'user'],
        ),
      );
      print('Serving response: $response');
      return Future.value(response);
    }

    return Future.value(GrpcLoginRequestReply(success: false));
  }

  bool isValid(String username, String password) =>
      username == 'demoUser' && password == 'demoPassword';

  String generateJwt({required String username, required List<String> roles}) {
    final jwt = JWT(
      {
        'username': username,
        'roles': roles,
      },
      issuer: jwtIssuer,
    );
    return jwt.sign(
      SecretKey(jwtSecret),
      expiresIn: Duration(days: 7),
    );
  }
}
