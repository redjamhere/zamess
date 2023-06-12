import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mesapp/src/utils/utils.dart';
import 'package:mesapp/src/repositories/authorization_repository.dart';

class Zamess extends StatelessWidget {
  const Zamess({super.key, required this.authorizationRepository});

  final AuthorizationRepository authorizationRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [RepositoryProvider.value(value: authorizationRepository)],
        child: const AppWrapper(
          key: ObjectKey("app_wrapper"),
        ));
  }
}

class AppWrapper extends StatelessWidget {
  const AppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemes.mainTheme(context),
      routerConfig: NavigationConfig().initRouter(),
    );
  }
}
