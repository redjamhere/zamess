import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:mesapp/src/app.dart';
import 'package:mesapp/src/utils/utils.dart';
import 'package:mesapp/src/repositories/repositories.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(Zamess(
    authorizationRepository: AuthorizationRepository(),
  ));
}
