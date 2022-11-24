import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:sould_mate/common/widgets/ButtonForm.dart';
import 'package:sould_mate/common/widgets/InputForm.dart';
import 'package:sould_mate/login/bloc/login_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return InputForm(
              hintText: 'Email',
              errorMsg: state.emailErrorMsg != null ? 'invalid email' : null,
              handleOnChange: (email) {
                context.read<LoginBloc>().add(LoginEmailChanged(email));
              },
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return InputForm(
              obscureText: true,
              hintText: 'Password',
              errorMsg:
                  state.passwordErrorMsg != null ? 'invalid password' : null,
              handleOnChange: (password) {
                context.read<LoginBloc>().add(LoginPasswordChanged(password));
              },
            );
          },
        ),
        const SizedBox(
          height: 40,
        ),
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return ButtonForm(
              text: 'LOGIN',
              action: () {
                state.status == FormzStatus.valid
                    ? context.read<LoginBloc>().add(const LoginSubmitted())
                    : null;
              },
            );
          },
        )
      ],
    );
  }
}
