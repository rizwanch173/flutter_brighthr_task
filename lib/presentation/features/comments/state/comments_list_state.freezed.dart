// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CommentsListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CommentEntity> get comments => throw _privateConstructorUsedError;

  /// Create a copy of CommentsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsListStateCopyWith<CommentsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsListStateCopyWith<$Res> {
  factory $CommentsListStateCopyWith(
    CommentsListState value,
    $Res Function(CommentsListState) then,
  ) = _$CommentsListStateCopyWithImpl<$Res, CommentsListState>;
  @useResult
  $Res call({bool isLoading, List<CommentEntity> comments});
}

/// @nodoc
class _$CommentsListStateCopyWithImpl<$Res, $Val extends CommentsListState>
    implements $CommentsListStateCopyWith<$Res> {
  _$CommentsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoading = null, Object? comments = null}) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            comments:
                null == comments
                    ? _value.comments
                    : comments // ignore: cast_nullable_to_non_nullable
                        as List<CommentEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsListStateImplCopyWith<$Res>
    implements $CommentsListStateCopyWith<$Res> {
  factory _$$CommentsListStateImplCopyWith(
    _$CommentsListStateImpl value,
    $Res Function(_$CommentsListStateImpl) then,
  ) = __$$CommentsListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<CommentEntity> comments});
}

/// @nodoc
class __$$CommentsListStateImplCopyWithImpl<$Res>
    extends _$CommentsListStateCopyWithImpl<$Res, _$CommentsListStateImpl>
    implements _$$CommentsListStateImplCopyWith<$Res> {
  __$$CommentsListStateImplCopyWithImpl(
    _$CommentsListStateImpl _value,
    $Res Function(_$CommentsListStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoading = null, Object? comments = null}) {
    return _then(
      _$CommentsListStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        comments:
            null == comments
                ? _value._comments
                : comments // ignore: cast_nullable_to_non_nullable
                    as List<CommentEntity>,
      ),
    );
  }
}

/// @nodoc

class _$CommentsListStateImpl implements _CommentsListState {
  const _$CommentsListStateImpl({
    this.isLoading = false,
    final List<CommentEntity> comments = const [],
  }) : _comments = comments;

  @override
  @JsonKey()
  final bool isLoading;
  final List<CommentEntity> _comments;
  @override
  @JsonKey()
  List<CommentEntity> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'CommentsListState(isLoading: $isLoading, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_comments),
  );

  /// Create a copy of CommentsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsListStateImplCopyWith<_$CommentsListStateImpl> get copyWith =>
      __$$CommentsListStateImplCopyWithImpl<_$CommentsListStateImpl>(
        this,
        _$identity,
      );
}

abstract class _CommentsListState implements CommentsListState {
  const factory _CommentsListState({
    final bool isLoading,
    final List<CommentEntity> comments,
  }) = _$CommentsListStateImpl;

  @override
  bool get isLoading;
  @override
  List<CommentEntity> get comments;

  /// Create a copy of CommentsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsListStateImplCopyWith<_$CommentsListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
