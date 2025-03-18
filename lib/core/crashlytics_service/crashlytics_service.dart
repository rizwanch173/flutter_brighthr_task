import 'dart:async';

abstract class CrashlyticsService {
  void initialize();

  Future<void> recordError(dynamic exception, StackTrace? stack);
}
