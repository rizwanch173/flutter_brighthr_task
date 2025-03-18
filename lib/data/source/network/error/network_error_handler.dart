import 'dart:io';
import 'package:flutter_brighthr_task/domain/entity/common/network_error.dart';
import 'package:dio/dio.dart';

import 'app_error_model.dart';

class NetworkErrorHandler {
  static NetworkError getNetworkError(dynamic error) {
    String networkExceptions;
    int statusCode = 0;
    if (error is Exception) {
      try {
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              networkExceptions = 'request_cancelled';
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = 'connection_request_timeout';
              break;
            case DioExceptionType.unknown:
              networkExceptions = 'no_internet_connection';
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = 'receive_timeout';
              break;
            case DioExceptionType.badResponse:
              final response = error.response;
              statusCode = response?.statusCode ?? 0;
              try {
                networkExceptions =
                    AppErrorModel()
                        .getNetworkError(response!.data, statusCode)
                        .errorMessage;
              } catch (e) {
                networkExceptions = 'Invalid status code: $statusCode';
              }
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = 'Send Timeout Error';
              break;
            case DioExceptionType.badCertificate:
              networkExceptions = 'Bad Certificate Error';
            case DioExceptionType.connectionError:
              networkExceptions = 'Connection Error';
          }
        } else if (error is SocketException) {
          networkExceptions = 'Network Error';
        } else {
          networkExceptions = 'Unexpected error occurred';
        }
      } on FormatException catch (e) {
        networkExceptions = 'Unexpected error occurred : ${e.message}';
      } catch (_) {
        networkExceptions = 'Unexpected error occurred';
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        networkExceptions = error.toString();
      } else {
        networkExceptions = 'Unexpected error occurred';
      }
    }
    return NetworkError(networkExceptions, false, statusCode);
  }
}

class CustomNetworkException extends DioException {
  CustomNetworkException(bool? status, String? message, int? statusCode)
    : super(
        requestOptions: RequestOptions(path: '/resStatusCheck'),
        type: DioExceptionType.badResponse,
        response: Response(
          data: {'message': message ?? '', 'status': status},
          statusCode: statusCode,
          requestOptions: RequestOptions(path: '/resStatusCheck'),
        ),
      );
}
