part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.status = FormzStatus.pure,
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.emailErrorMsg,
    this.passwordErrorMsg,
  });

  final FormzStatus status;
  final Email email;
  final Password password;
  final EmailValidationError? emailErrorMsg;
  final PasswordValidationError? passwordErrorMsg;

  LoginState copyWith({
    FormzStatus? status,
    Email? email,
    Password? password,
    EmailValidationError? emailErrorMsg,
    PasswordValidationError? passwordErrorMsg,
  }) {
    return LoginState(
      status: status ?? this.status,
      email: email ?? this.email,
      password: password ?? this.password,
      emailErrorMsg: emailErrorMsg,
      passwordErrorMsg: passwordErrorMsg,
    );
  }

  @override
  List<Object> get props => [status, email, password];
}
