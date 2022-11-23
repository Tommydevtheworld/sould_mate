import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sould_mate/authentication/bloc/authentication_bloc.dart';
import 'package:sould_mate/repositories/authentication_repository.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        switch (state.status) {
          case AuthenticationStatus.authenticated:
            context.go('/create-account');
            break;
          case AuthenticationStatus.unauthenticated:
            context.go('/');
            break;
          default:
            context.go('/');
        }
      },
      child: Container(),
    );
  }
}
