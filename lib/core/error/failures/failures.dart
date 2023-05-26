import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure([this.message = 'Ocorreu um erro desconhecido.']);

  @override
  List<Object?> get props => [message];
}

class AuthenticationFailure extends Failure {
  const AuthenticationFailure([super.message]);

  factory AuthenticationFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const AuthenticationFailure(
            'O e-mail não é válido ou está mal formatado.');
      case 'user-disabled':
        return const AuthenticationFailure(
          'Este usuário foi desativado. Entre em contato com o suporte para obter ajuda.',
        );
      case 'email-already-in-use':
        return const AuthenticationFailure(
            'Já existe uma conta para esse e-mail.');
      case 'operation-not-allowed':
        return const AuthenticationFailure(
            'A operação não é permitida. Entre em contato com o suporte.');
      case 'weak-password':
        return const AuthenticationFailure('Digite uma senha mais forte.');
      case 'user-not-found':
        return const AuthenticationFailure(
            'E-mail não encontrado, por favor crie uma conta.');
      case 'wrong-password':
        return const AuthenticationFailure(
            'Senha incorreta.Por favor tente novamente.');
      case 'account-exists-with-different-credential':
        return const AuthenticationFailure(
            'A conta existe com credenciais diferentes.');
      case 'invalid-credential':
        return const AuthenticationFailure(
            'A credencial recebida está incorreta ou expirou.');
      case 'invalid-verification-code':
        return const AuthenticationFailure(
            'O código de verificação de credencial recebido é inválido.');
      case 'invalid-verification-id':
        return const AuthenticationFailure(
            'A ID de verificação de credencial recebida é inválida.');
      default:
        return const AuthenticationFailure();
    }
  }
}
