import 'package:flutter/widgets.dart';
import 'package:sould_mate/repositories/authentication_repository.dart';
import 'package:sould_mate/repositories/user_repository.dart';
import 'package:sould_mate/src/settings/app.dart';

void main() {
  runApp(
    App(
      authenticationRepository: AuthenticationRepository(),
      userRepository: UserRepository(),
    ),
  );
}
