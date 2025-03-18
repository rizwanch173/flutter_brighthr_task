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
  bootstrap();
}

void mainCommon({required Environment environment}) {
  bootstrap();
}

Future<void> bootstrap({
  Environment environment = Environment.development,
}) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Hive.initFlutter();

      // Register dependencies and wait for RootChecker to be ready
      await registerDependencies();
      final _articleLocalStorage = inject<ArticleLocalStorage>();
      await _articleLocalStorage.init();

      unawaited(
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
      );

      FlutterError.onError = (details) {
        log(details.exceptionAsString(), stackTrace: details.stack);
      };

      // Initialize secure logger

      runApp(const App());
    },
    (error, stackTrace) async {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}
