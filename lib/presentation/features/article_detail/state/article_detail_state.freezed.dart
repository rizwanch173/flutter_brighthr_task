// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ArticleDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  ArticleEntity? get article => throw _privateConstructorUsedError;
  List<CommentEntity> get comments => throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;

  /// Create a copy of ArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleDetailStateCopyWith<ArticleDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDetailStateCopyWith<$Res> {
  factory $ArticleDetailStateCopyWith(
    ArticleDetailState value,
    $Res Function(ArticleDetailState) then,
  ) = _$ArticleDetailStateCopyWithImpl<$Res, ArticleDetailState>;
  @useResult
  $Res call({
    bool isLoading,
    ArticleEntity? article,
    List<CommentEntity> comments,
    bool isBookmarked,
  });

  $ArticleEntityCopyWith<$Res>? get article;
}

/// @nodoc
class _$ArticleDetailStateCopyWithImpl<$Res, $Val extends ArticleDetailState>
    implements $ArticleDetailStateCopyWith<$Res> {
  _$ArticleDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? article = freezed,
    Object? comments = null,
    Object? isBookmarked = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            article:
                freezed == article
                    ? _value.article
                    : article // ignore: cast_nullable_to_non_nullable
                        as ArticleEntity?,
            comments:
                null == comments
                    ? _value.comments
                    : comments // ignore: cast_nullable_to_non_nullable
                        as List<CommentEntity>,
            isBookmarked:
                null == isBookmarked
                    ? _value.isBookmarked
                    : isBookmarked // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleEntityCopyWith<$Res>? get article {
    if (_value.article == null) {
      return null;
    }

    return $ArticleEntityCopyWith<$Res>(_value.article!, (value) {
      return _then(_value.copyWith(article: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleDetailStateImplCopyWith<$Res>
    implements $ArticleDetailStateCopyWith<$Res> {
  factory _$$ArticleDetailStateImplCopyWith(
    _$ArticleDetailStateImpl value,
    $Res Function(_$ArticleDetailStateImpl) then,
  ) = __$$ArticleDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    ArticleEntity? article,
    List<CommentEntity> comments,
    bool isBookmarked,
  });

  @override
  $ArticleEntityCopyWith<$Res>? get article;
}

/// @nodoc
class __$$ArticleDetailStateImplCopyWithImpl<$Res>
    extends _$ArticleDetailStateCopyWithImpl<$Res, _$ArticleDetailStateImpl>
    implements _$$ArticleDetailStateImplCopyWith<$Res> {
  __$$ArticleDetailStateImplCopyWithImpl(
    _$ArticleDetailStateImpl _value,
    $Res Function(_$ArticleDetailStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? article = freezed,
    Object? comments = null,
    Object? isBookmarked = null,
  }) {
    return _then(
      _$ArticleDetailStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        article:
            freezed == article
                ? _value.article
                : article // ignore: cast_nullable_to_non_nullable
                    as ArticleEntity?,
        comments:
            null == comments
                ? _value._comments
                : comments // ignore: cast_nullable_to_non_nullable
                    as List<CommentEntity>,
        isBookmarked:
            null == isBookmarked
                ? _value.isBookmarked
                : isBookmarked // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$ArticleDetailStateImpl implements _ArticleDetailState {
  const _$ArticleDetailStateImpl({
    this.isLoading = false,
    this.article,
    final List<CommentEntity> comments = const [],
    this.isBookmarked = false,
  }) : _comments = comments;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final ArticleEntity? article;
  final List<CommentEntity> _comments;
  @override
  @JsonKey()
  List<CommentEntity> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  @JsonKey()
  final bool isBookmarked;

  @override
  String toString() {
    return 'ArticleDetailState(isLoading: $isLoading, article: $article, comments: $comments, isBookmarked: $isBookmarked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleDetailStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.article, article) || other.article == article) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    article,
    const DeepCollectionEquality().hash(_comments),
    isBookmarked,
  );

  /// Create a copy of ArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleDetailStateImplCopyWith<_$ArticleDetailStateImpl> get copyWith =>
      __$$ArticleDetailStateImplCopyWithImpl<_$ArticleDetailStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ArticleDetailState implements ArticleDetailState {
  const factory _ArticleDetailState({
    final bool isLoading,
    final ArticleEntity? article,
    final List<CommentEntity> comments,
    final bool isBookmarked,
  }) = _$ArticleDetailStateImpl;

  @override
  bool get isLoading;
  @override
  ArticleEntity? get article;
  @override
  List<CommentEntity> get comments;
  @override
  bool get isBookmarked;

  /// Create a copy of ArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleDetailStateImplCopyWith<_$ArticleDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
