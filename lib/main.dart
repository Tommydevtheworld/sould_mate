import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:sould_mate/src/settings/app.dart';
import 'package:user_repository/user_repository.dart';

void main() {
  runApp(
    App(
      authenticationRepository: AuthenticationRepository(),
      userRepository: UserRepository(),
    ),
  );
}
