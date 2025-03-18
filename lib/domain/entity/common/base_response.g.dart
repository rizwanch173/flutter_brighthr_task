// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkEntity<T> _$NetworkEntityFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => NetworkEntity<T>(
  json['status'],
  json['message'] as String?,
  fromJsonT(json['result']),
);

Map<String, dynamic> _$NetworkEntityToJson<T>(
  NetworkEntity<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'result': toJsonT(instance.result),
};

_$EmptyNetworkEntityImpl _$$EmptyNetworkEntityImplFromJson(
  Map<String, dynamic> json,
) => _$EmptyNetworkEntityImpl(json['status'], json['message'] as String?);

Map<String, dynamic> _$$EmptyNetworkEntityImplToJson(
  _$EmptyNetworkEntityImpl instance,
) => <String, dynamic>{'status': instance.status, 'message': instance.message};
