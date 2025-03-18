import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class NetworkEntity<T> {
  @JsonKey(name: 'status')
  dynamic status;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'result')
  T result;

  NetworkEntity(this.status, this.message, this.result);

  factory NetworkEntity.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) =>
      _$NetworkEntityFromJson(json, fromJsonT);

  NetworkEntity<U> map<U>(U Function(T result) transform) {
    return NetworkEntity<U>(
      status,
      message,
      transform(result),
    );
  }

  EmptyNetworkEntity toEmptyNetworkEntity() {
    return EmptyNetworkEntity(
      status,
      message,
    );
  }
}

@freezed
class EmptyNetworkEntity with _$EmptyNetworkEntity {
  @JsonSerializable()
  const factory EmptyNetworkEntity(
    @JsonKey(name: 'status') dynamic status,
    @JsonKey(name: 'message') String? message,
  ) = _EmptyNetworkEntity;

  factory EmptyNetworkEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EmptyNetworkEntityFromJson(json);
}
