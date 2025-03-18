import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@InjectableInit(asExtension: true)
Future registerDependencies() async {
  return _getIt.init();
}

final GetIt _getIt = GetIt.I;

T inject<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) =>
    _getIt<T>(instanceName: instanceName, param1: param1, param2: param2);

void registerDI<T extends Object>(
  FactoryFunc<T> factoryFunc, {
  String? instanceName,
}) =>
    _getIt.registerFactory(factoryFunc, instanceName: instanceName);

class DIConstants {
  static const String baseUrl = 'baseUrl';
  static const String appError = 'appError';
  static const String secureStorage = 'securedStorage';
  static const String unsecureStorage = 'unsecuredStorage';
}
