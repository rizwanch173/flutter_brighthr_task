import 'dart:developer';
import 'dart:io';
import 'package:flutter_brighthr_task/di/di.dart';
import 'package:flutter_brighthr_task/flavor_config.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @singleton
  Dio getDio() {
    final dio = Dio();
    dio
      ..httpClientAdapter
      ..options.headers = {'Content-Type': 'application/json; charset=UTF-8'};
    dio.interceptors.add(
      LogInterceptor(
        logPrint: (object) {
          log(object.toString());
        },
        responseBody: true,
        responseHeader: false,
        requestBody: true,
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          handler.next(options);
        },
        onResponse: (response, handler) {
          handler.next(response);
        },
        onError: (err, handler) async {
          return handler.next(err);
        },
      ),
    );
    return dio;
  }

  @Named(DIConstants.baseUrl)
  String get baseUrl => Config.apiUrl;

  @preResolve
  Future<HttpClient> sslHttpClient() async {
    HttpClient httpClient = HttpClient();
    return httpClient;
  }
}
