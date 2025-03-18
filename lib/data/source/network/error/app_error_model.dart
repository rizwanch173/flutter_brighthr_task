import 'package:flutter_brighthr_task/domain/entity/common/network_error.dart';

class AppErrorModel {
  NetworkError getNetworkError(Map<String, dynamic> json, int code) {
    return NetworkError(json['message'] ?? '', json['status'] ?? '', code);
  }
}
