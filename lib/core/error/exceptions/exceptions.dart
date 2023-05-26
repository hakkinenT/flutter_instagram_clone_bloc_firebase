abstract class AppException {
  final dynamic code;
  final String? message;

  const AppException(
      {this.code = 'unknown', this.message = 'Ocorreu um erro desconhecido!'});
}

class AuthenticationException extends AppException {
  const AuthenticationException({super.code, super.message});
}
