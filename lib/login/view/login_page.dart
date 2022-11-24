import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sould_mate/login/bloc/login_bloc.dart';
import 'package:sould_mate/repositories/authentication_repository.dart';

import 'login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          color: Colors.black45,
          image: DecorationImage(
            opacity: 0.8,
            image: AssetImage('assets/image/login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              'Welcome back',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Login to your account',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 54,
            ),
            BlocProvider(
              create: (context) => LoginBloc(
                authenticationRepository:
                    RepositoryProvider.of<AuthenticationRepository>(context),
              ),
              child: const LoginForm(),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () => context.go('/forgot-password'),
                child: Text(
                  'Forgot your password?',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
