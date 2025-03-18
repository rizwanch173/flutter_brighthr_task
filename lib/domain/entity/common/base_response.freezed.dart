// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EmptyNetworkEntity _$EmptyNetworkEntityFromJson(Map<String, dynamic> json) {
  return _EmptyNetworkEntity.fromJson(json);
}

/// @nodoc
mixin _$EmptyNetworkEntity {
  @JsonKey(name: 'status')
  dynamic get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this EmptyNetworkEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmptyNetworkEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmptyNetworkEntityCopyWith<EmptyNetworkEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyNetworkEntityCopyWith<$Res> {
  factory $EmptyNetworkEntityCopyWith(
    EmptyNetworkEntity value,
    $Res Function(EmptyNetworkEntity) then,
  ) = _$EmptyNetworkEntityCopyWithImpl<$Res, EmptyNetworkEntity>;
  @useResult
  $Res call({
    @JsonKey(name: 'status') dynamic status,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$EmptyNetworkEntityCopyWithImpl<$Res, $Val extends EmptyNetworkEntity>
    implements $EmptyNetworkEntityCopyWith<$Res> {
  _$EmptyNetworkEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmptyNetworkEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = freezed, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EmptyNetworkEntityImplCopyWith<$Res>
    implements $EmptyNetworkEntityCopyWith<$Res> {
  factory _$$EmptyNetworkEntityImplCopyWith(
    _$EmptyNetworkEntityImpl value,
    $Res Function(_$EmptyNetworkEntityImpl) then,
  ) = __$$EmptyNetworkEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') dynamic status,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$EmptyNetworkEntityImplCopyWithImpl<$Res>
    extends _$EmptyNetworkEntityCopyWithImpl<$Res, _$EmptyNetworkEntityImpl>
    implements _$$EmptyNetworkEntityImplCopyWith<$Res> {
  __$$EmptyNetworkEntityImplCopyWithImpl(
    _$EmptyNetworkEntityImpl _value,
    $Res Function(_$EmptyNetworkEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmptyNetworkEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = freezed, Object? message = freezed}) {
    return _then(
      _$EmptyNetworkEntityImpl(
        freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as dynamic,
        freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable()
class _$EmptyNetworkEntityImpl implements _EmptyNetworkEntity {
  const _$EmptyNetworkEntityImpl(
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'message') this.message,
  );

  factory _$EmptyNetworkEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmptyNetworkEntityImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final dynamic status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'EmptyNetworkEntity(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyNetworkEntityImpl &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(status),
    message,
  );

  /// Create a copy of EmptyNetworkEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyNetworkEntityImplCopyWith<_$EmptyNetworkEntityImpl> get copyWith =>
      __$$EmptyNetworkEntityImplCopyWithImpl<_$EmptyNetworkEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyNetworkEntityImplToJson(this);
  }
}

abstract class _EmptyNetworkEntity implements EmptyNetworkEntity {
  const factory _EmptyNetworkEntity(
    @JsonKey(name: 'status') final dynamic status,
    @JsonKey(name: 'message') final String? message,
  ) = _$EmptyNetworkEntityImpl;

  factory _EmptyNetworkEntity.fromJson(Map<String, dynamic> json) =
      _$EmptyNetworkEntityImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  dynamic get status;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of EmptyNetworkEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyNetworkEntityImplCopyWith<_$EmptyNetworkEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
