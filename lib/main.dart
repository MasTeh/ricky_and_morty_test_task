import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ricky_and_morty_test_task/core/config/config.dart';
import 'package:ricky_and_morty_test_task/core/theme/app_theme.dart';
import 'package:ricky_and_morty_test_task/features/use_cases/init_use_case.dart';
import 'package:ricky_and_morty_test_task/features/views/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();  

  PlatformDispatcher.instance.onError = (error, stackTrace) {
    log(
      'Uncaught exception:',
      error: error,
      stackTrace: stackTrace,
    );
    return true;
  };

  FlutterError.onError = (details) {
    log(
      'Uncaught exception:',
      error: details.exception,
      stackTrace: details.stack,
    );
    if (!details.silent) {
      // Action if error is not silent
      // Maybe show a dialog or open a error screen
    }
  };

  await InitUseCase.execute(DevConfig());

  runApp(MaterialApp.router(
    title: "Ricky and Morty",  
    theme: AppTheme.lightTheme,
    routerDelegate: appRoutes.routerDelegate,
    routeInformationParser: appRoutes.routeInformationParser,
    routeInformationProvider: appRoutes.routeInformationProvider,
  ));
}
