// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ArticleEntity _$ArticleEntityFromJson(Map<String, dynamic> json) {
  return _ArticleEntity.fromJson(json);
}

/// @nodoc
mixin _$ArticleEntity {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  /// Serializes this ArticleEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleEntityCopyWith<ArticleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleEntityCopyWith<$Res> {
  factory $ArticleEntityCopyWith(
    ArticleEntity value,
    $Res Function(ArticleEntity) then,
  ) = _$ArticleEntityCopyWithImpl<$Res, ArticleEntity>;
  @useResult
  $Res call({int userId, int id, String title, String body});
}

/// @nodoc
class _$ArticleEntityCopyWithImpl<$Res, $Val extends ArticleEntity>
    implements $ArticleEntityCopyWith<$Res> {
  _$ArticleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as int,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            body:
                null == body
                    ? _value.body
                    : body // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArticleEntityImplCopyWith<$Res>
    implements $ArticleEntityCopyWith<$Res> {
  factory _$$ArticleEntityImplCopyWith(
    _$ArticleEntityImpl value,
    $Res Function(_$ArticleEntityImpl) then,
  ) = __$$ArticleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int id, String title, String body});
}

/// @nodoc
class __$$ArticleEntityImplCopyWithImpl<$Res>
    extends _$ArticleEntityCopyWithImpl<$Res, _$ArticleEntityImpl>
    implements _$$ArticleEntityImplCopyWith<$Res> {
  __$$ArticleEntityImplCopyWithImpl(
    _$ArticleEntityImpl _value,
    $Res Function(_$ArticleEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArticleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(
      _$ArticleEntityImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as int,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        body:
            null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable()
class _$ArticleEntityImpl implements _ArticleEntity {
  const _$ArticleEntityImpl({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory _$ArticleEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleEntityImplFromJson(json);

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'ArticleEntity(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, body);

  /// Create a copy of ArticleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleEntityImplCopyWith<_$ArticleEntityImpl> get copyWith =>
      __$$ArticleEntityImplCopyWithImpl<_$ArticleEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleEntityImplToJson(this);
  }
}

abstract class _ArticleEntity implements ArticleEntity {
  const factory _ArticleEntity({
    required final int userId,
    required final int id,
    required final String title,
    required final String body,
  }) = _$ArticleEntityImpl;

  factory _ArticleEntity.fromJson(Map<String, dynamic> json) =
      _$ArticleEntityImpl.fromJson;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get body;

  /// Create a copy of ArticleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleEntityImplCopyWith<_$ArticleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
