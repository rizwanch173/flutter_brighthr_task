// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeState {
  bool get showAddButton => throw _privateConstructorUsedError;
  List<ArticleEntity> get articles => throw _privateConstructorUsedError;
  List<ArticleEntity> get savedArticles => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get savedArticlesCount => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    bool showAddButton,
    List<ArticleEntity> articles,
    List<ArticleEntity> savedArticles,
    String errorMessage,
    bool isLoading,
    int savedArticlesCount,
  });
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAddButton = null,
    Object? articles = null,
    Object? savedArticles = null,
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? savedArticlesCount = null,
  }) {
    return _then(
      _value.copyWith(
            showAddButton:
                null == showAddButton
                    ? _value.showAddButton
                    : showAddButton // ignore: cast_nullable_to_non_nullable
                        as bool,
            articles:
                null == articles
                    ? _value.articles
                    : articles // ignore: cast_nullable_to_non_nullable
                        as List<ArticleEntity>,
            savedArticles:
                null == savedArticles
                    ? _value.savedArticles
                    : savedArticles // ignore: cast_nullable_to_non_nullable
                        as List<ArticleEntity>,
            errorMessage:
                null == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String,
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            savedArticlesCount:
                null == savedArticlesCount
                    ? _value.savedArticlesCount
                    : savedArticlesCount // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool showAddButton,
    List<ArticleEntity> articles,
    List<ArticleEntity> savedArticles,
    String errorMessage,
    bool isLoading,
    int savedArticlesCount,
  });
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAddButton = null,
    Object? articles = null,
    Object? savedArticles = null,
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? savedArticlesCount = null,
  }) {
    return _then(
      _$HomeStateImpl(
        showAddButton:
            null == showAddButton
                ? _value.showAddButton
                : showAddButton // ignore: cast_nullable_to_non_nullable
                    as bool,
        articles:
            null == articles
                ? _value._articles
                : articles // ignore: cast_nullable_to_non_nullable
                    as List<ArticleEntity>,
        savedArticles:
            null == savedArticles
                ? _value._savedArticles
                : savedArticles // ignore: cast_nullable_to_non_nullable
                    as List<ArticleEntity>,
        errorMessage:
            null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        savedArticlesCount:
            null == savedArticlesCount
                ? _value.savedArticlesCount
                : savedArticlesCount // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({
    this.showAddButton = false,
    final List<ArticleEntity> articles = const [],
    final List<ArticleEntity> savedArticles = const [],
    this.errorMessage = '',
    this.isLoading = false,
    this.savedArticlesCount = 0,
  }) : _articles = articles,
       _savedArticles = savedArticles;

  @override
  @JsonKey()
  final bool showAddButton;
  final List<ArticleEntity> _articles;
  @override
  @JsonKey()
  List<ArticleEntity> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  final List<ArticleEntity> _savedArticles;
  @override
  @JsonKey()
  List<ArticleEntity> get savedArticles {
    if (_savedArticles is EqualUnmodifiableListView) return _savedArticles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedArticles);
  }

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int savedArticlesCount;

  @override
  String toString() {
    return 'HomeState(showAddButton: $showAddButton, articles: $articles, savedArticles: $savedArticles, errorMessage: $errorMessage, isLoading: $isLoading, savedArticlesCount: $savedArticlesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.showAddButton, showAddButton) ||
                other.showAddButton == showAddButton) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            const DeepCollectionEquality().equals(
              other._savedArticles,
              _savedArticles,
            ) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.savedArticlesCount, savedArticlesCount) ||
                other.savedArticlesCount == savedArticlesCount));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    showAddButton,
    const DeepCollectionEquality().hash(_articles),
    const DeepCollectionEquality().hash(_savedArticles),
    errorMessage,
    isLoading,
    savedArticlesCount,
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    final bool showAddButton,
    final List<ArticleEntity> articles,
    final List<ArticleEntity> savedArticles,
    final String errorMessage,
    final bool isLoading,
    final int savedArticlesCount,
  }) = _$HomeStateImpl;

  @override
  bool get showAddButton;
  @override
  List<ArticleEntity> get articles;
  @override
  List<ArticleEntity> get savedArticles;
  @override
  String get errorMessage;
  @override
  bool get isLoading;
  @override
  int get savedArticlesCount;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
