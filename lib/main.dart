import 'dart:async';
import 'dart:developer';

import 'package:flutter_brighthr_task/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../di/di.dart';

import 'flavor_config.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_brighthr_task/data/source/local/article_local_storage.dart';

void main() async {
  initializeApp();
}

void mainCommon({required Environment environment}) {
  initializeApp();
}

Future<void> initializeApp({
  Environment environment = Environment.development,
}) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Hive.initFlutter();

      // Register dependencies and wait for RootChecker to be ready
      await registerDependencies();
      final articleLocalStorage = inject<ArticleLocalStorage>();
      await articleLocalStorage.init();

      unawaited(
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
      );

      FlutterError.onError = (details) {
        log(details.exceptionAsString(), stackTrace: details.stack);
      };

      runApp(const App());
    },
    (error, stackTrace) async {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}
