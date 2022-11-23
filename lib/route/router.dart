import 'package:go_router/go_router.dart';
import 'package:sould_mate/create_account/view/create_account.dart';
import 'package:sould_mate/forgot_password/view/forgot_password.dart';
import 'package:sould_mate/home/view/auth_page.dart';
import 'package:sould_mate/home/view/home_page.dart';
import 'package:sould_mate/login/view/login_page.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/sign-in',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/forgot-password',
      builder: (context, state) => const ForgotPassword(),
    ),
    GoRoute(
      path: '/create-account',
      builder: (context, state) => const CreateAccount(),
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthPage(),
    ),
  ],
  debugLogDiagnostics: true,
  initialLocation: '/',
);
