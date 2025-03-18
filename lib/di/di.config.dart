// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i497;

import 'package:dio/dio.dart' as _i361;
import 'package:flutter_brighthr_task/app/view_model/app_view_model.dart'
    as _i847;
import 'package:flutter_brighthr_task/data/repository/article_repository.dart'
    as _i338;
import 'package:flutter_brighthr_task/data/source/local/article_local_storage.dart'
    as _i739;
import 'package:flutter_brighthr_task/data/source/network/service/api_service.dart'
    as _i127;
import 'package:flutter_brighthr_task/di/module/network_module.dart' as _i768;
import 'package:flutter_brighthr_task/di/module/storage_module.dart' as _i918;
import 'package:flutter_brighthr_task/domain/repository/article_repository.dart'
    as _i532;
import 'package:flutter_brighthr_task/domain/usecases/article_comments_fetch_usecase.dart'
    as _i94;
import 'package:flutter_brighthr_task/domain/usecases/article_fetech_usecase.dart'
    as _i29;
import 'package:flutter_brighthr_task/presentation/features/article/view_model/article_view_model.dart'
    as _i202;
import 'package:flutter_brighthr_task/presentation/features/article_detail/view_model/article_detail_view_model.dart'
    as _i441;
import 'package:flutter_brighthr_task/presentation/features/comments/view_model/comments_list_view_model.dart'
    as _i567;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final storageModule = _$StorageModule();
    final networkModule = _$NetworkModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => storageModule.pref,
      preResolve: true,
    );
    await gh.factoryAsync<_i497.HttpClient>(
      () => networkModule.sslHttpClient(),
      preResolve: true,
    );
    gh.singleton<_i361.Dio>(() => networkModule.getDio());
    gh.singleton<_i847.AppViewModel>(() => _i847.AppViewModel());
    gh.singleton<_i739.ArticleLocalStorage>(() => _i739.ArticleLocalStorage());
    gh.factory<String>(() => networkModule.baseUrl, instanceName: 'baseUrl');
    gh.factory<_i127.ApiService>(
      () => _i127.ApiService(
        gh<_i361.Dio>(),
        gh<String>(instanceName: 'baseUrl'),
      ),
    );
    gh.singleton<_i532.ArticleRepository>(
      () => _i338.ArticleRepositoryImpl(
        gh<_i127.ApiService>(),
        gh<_i739.ArticleLocalStorage>(),
      ),
    );
    gh.factory<_i567.CommentsListViewModel>(
      () => _i567.CommentsListViewModel(gh<_i532.ArticleRepository>()),
    );
    gh.factory<_i94.ArticleCommentsFetchUseCase>(
      () => _i94.ArticleCommentsFetchUseCase(gh<_i532.ArticleRepository>()),
    );
    gh.factory<_i29.ArticleFetchUseCase>(
      () => _i29.ArticleFetchUseCase(gh<_i532.ArticleRepository>()),
    );
    gh.factory<_i202.ArticleViewModel>(
      () => _i202.ArticleViewModel(
        gh<_i29.ArticleFetchUseCase>(),
        gh<_i532.ArticleRepository>(),
      ),
    );
    gh.factory<_i441.ArticleDetailViewModel>(
      () => _i441.ArticleDetailViewModel(
        gh<_i94.ArticleCommentsFetchUseCase>(),
        gh<_i532.ArticleRepository>(),
        gh<_i202.ArticleViewModel>(),
      ),
    );
    return this;
  }
}

class _$StorageModule extends _i918.StorageModule {}

class _$NetworkModule extends _i768.NetworkModule {}
