import 'package:flutter_brighthr_task/domain/entity/common/base_response.dart';
import 'package:flutter_brighthr_task/domain/entity/common/network_error.dart';
import 'package:dartz/dartz.dart';

import '../../data/source/network/error/network_error_handler.dart';

extension EmptyNetworkResultExtenstion on Future<EmptyNetworkEntity> {
  Future<Either<NetworkError, EmptyNetworkEntity>> getResult() async {
    try {
      final res = await this;
      return Right(res);
    } catch (e, s) {
      final networkError = NetworkErrorHandler.getNetworkError(e);
      return Left(networkError);
    }
  }
}

extension NetworkResultExtenstion<T> on Future<NetworkEntity<T>> {
  Future<Either<NetworkError, NetworkEntity<T>>> getResult() async {
    try {
      final res = await this;
      return Right(res);
    } catch (e, s) {
      final networkError = NetworkErrorHandler.getNetworkError(e);
      return Left(networkError);
    }
  }
}

extension NetworkExtenstion<T> on Future<T> {
  Future<Either<NetworkError, T>> getResult() async {
    try {
      final res = await this;
      return Right(res);
    } catch (e, s) {
      final networkError = NetworkErrorHandler.getNetworkError(e);
      return Left(networkError);
    }
  }
}
