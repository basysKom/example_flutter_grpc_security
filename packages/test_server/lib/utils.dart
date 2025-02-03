import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:grpc/grpc.dart';

String get jwtIssuer => 'JWT_ISSUER';
String get jwtSecret => 'JWT_SECRET';

// See: https://grpc-dart-docs.pages.dev/docs/interceptors/server-side-interceptors/#auth-interceptor-example
Future<GrpcError?> authInterceptor(
  ServiceCall call,
  ServiceMethod method,
) async {
  if (method.name == 'Login') {
    return null;
  }

  final token = (call.clientMetadata ?? {})['token'];
  if (token == null) {
    return GrpcError.unauthenticated('Missing access token');
  }

  final tokenValid = verifyJwtToken(token);
  print('Access token ${token.substring(0, 8)}[...] is'
      '${tokenValid ? '' : ' NOT'} '
      'valid');

  if (!tokenValid) {
    return GrpcError.unauthenticated('Invalid access token');
  } else {
    return null;
  }
}

bool verifyJwtToken(String token) {
  try {
    JWT.verify(token, SecretKey(jwtSecret));
    return true;
  } catch (e) {
    return false;
  }
}
