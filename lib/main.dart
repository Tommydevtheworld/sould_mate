import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:sould_mate/repositories/authentication_repository.dart';
import 'package:sould_mate/repositories/user_repository.dart';
import 'package:sould_mate/src/settings/app.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    App(
      authenticationRepository: AuthenticationRepository(),
      userRepository: UserRepository(),
    ),
  );
}
