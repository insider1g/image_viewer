// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'images_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ImagesStateTearOff {
  const _$ImagesStateTearOff();

// ignore: unused_element
  _ImagesStateLoading loading() {
    return const _ImagesStateLoading();
  }

// ignore: unused_element
  _ImagesStateContent content({List<ImageEntity> images, bool endReached}) {
    return _ImagesStateContent(
      images: images,
      endReached: endReached,
    );
  }

// ignore: unused_element
  _ImagesStateEmptyContent empty() {
    return const _ImagesStateEmptyContent();
  }

// ignore: unused_element
  _ImagesStateError error(Failure failure) {
    return _ImagesStateError(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImagesState = _$ImagesStateTearOff();

/// @nodoc
mixin _$ImagesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult content(List<ImageEntity> images, bool endReached),
    @required TResult empty(),
    @required TResult error(Failure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult content(List<ImageEntity> images, bool endReached),
    TResult empty(),
    TResult error(Failure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_ImagesStateLoading value),
    @required TResult content(_ImagesStateContent value),
    @required TResult empty(_ImagesStateEmptyContent value),
    @required TResult error(_ImagesStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_ImagesStateLoading value),
    TResult content(_ImagesStateContent value),
    TResult empty(_ImagesStateEmptyContent value),
    TResult error(_ImagesStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ImagesStateCopyWith<$Res> {
  factory $ImagesStateCopyWith(
          ImagesState value, $Res Function(ImagesState) then) =
      _$ImagesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImagesStateCopyWithImpl<$Res> implements $ImagesStateCopyWith<$Res> {
  _$ImagesStateCopyWithImpl(this._value, this._then);

  final ImagesState _value;
  // ignore: unused_field
  final $Res Function(ImagesState) _then;
}

/// @nodoc
abstract class _$ImagesStateLoadingCopyWith<$Res> {
  factory _$ImagesStateLoadingCopyWith(
          _ImagesStateLoading value, $Res Function(_ImagesStateLoading) then) =
      __$ImagesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ImagesStateLoadingCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res>
    implements _$ImagesStateLoadingCopyWith<$Res> {
  __$ImagesStateLoadingCopyWithImpl(
      _ImagesStateLoading _value, $Res Function(_ImagesStateLoading) _then)
      : super(_value, (v) => _then(v as _ImagesStateLoading));

  @override
  _ImagesStateLoading get _value => super._value as _ImagesStateLoading;
}

/// @nodoc
class _$_ImagesStateLoading implements _ImagesStateLoading {
  const _$_ImagesStateLoading();

  @override
  String toString() {
    return 'ImagesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ImagesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult content(List<ImageEntity> images, bool endReached),
    @required TResult empty(),
    @required TResult error(Failure failure),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(empty != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult content(List<ImageEntity> images, bool endReached),
    TResult empty(),
    TResult error(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_ImagesStateLoading value),
    @required TResult content(_ImagesStateContent value),
    @required TResult empty(_ImagesStateEmptyContent value),
    @required TResult error(_ImagesStateError value),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(empty != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_ImagesStateLoading value),
    TResult content(_ImagesStateContent value),
    TResult empty(_ImagesStateEmptyContent value),
    TResult error(_ImagesStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ImagesStateLoading implements ImagesState {
  const factory _ImagesStateLoading() = _$_ImagesStateLoading;
}

/// @nodoc
abstract class _$ImagesStateContentCopyWith<$Res> {
  factory _$ImagesStateContentCopyWith(
          _ImagesStateContent value, $Res Function(_ImagesStateContent) then) =
      __$ImagesStateContentCopyWithImpl<$Res>;
  $Res call({List<ImageEntity> images, bool endReached});
}

/// @nodoc
class __$ImagesStateContentCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res>
    implements _$ImagesStateContentCopyWith<$Res> {
  __$ImagesStateContentCopyWithImpl(
      _ImagesStateContent _value, $Res Function(_ImagesStateContent) _then)
      : super(_value, (v) => _then(v as _ImagesStateContent));

  @override
  _ImagesStateContent get _value => super._value as _ImagesStateContent;

  @override
  $Res call({
    Object images = freezed,
    Object endReached = freezed,
  }) {
    return _then(_ImagesStateContent(
      images: images == freezed ? _value.images : images as List<ImageEntity>,
      endReached:
          endReached == freezed ? _value.endReached : endReached as bool,
    ));
  }
}

/// @nodoc
class _$_ImagesStateContent implements _ImagesStateContent {
  const _$_ImagesStateContent({this.images, this.endReached});

  @override
  final List<ImageEntity> images;
  @override
  final bool endReached;

  @override
  String toString() {
    return 'ImagesState.content(images: $images, endReached: $endReached)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagesStateContent &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.endReached, endReached) ||
                const DeepCollectionEquality()
                    .equals(other.endReached, endReached)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(endReached);

  @JsonKey(ignore: true)
  @override
  _$ImagesStateContentCopyWith<_ImagesStateContent> get copyWith =>
      __$ImagesStateContentCopyWithImpl<_ImagesStateContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult content(List<ImageEntity> images, bool endReached),
    @required TResult empty(),
    @required TResult error(Failure failure),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(empty != null);
    assert(error != null);
    return content(images, endReached);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult content(List<ImageEntity> images, bool endReached),
    TResult empty(),
    TResult error(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (content != null) {
      return content(images, endReached);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_ImagesStateLoading value),
    @required TResult content(_ImagesStateContent value),
    @required TResult empty(_ImagesStateEmptyContent value),
    @required TResult error(_ImagesStateError value),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(empty != null);
    assert(error != null);
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_ImagesStateLoading value),
    TResult content(_ImagesStateContent value),
    TResult empty(_ImagesStateEmptyContent value),
    TResult error(_ImagesStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _ImagesStateContent implements ImagesState {
  const factory _ImagesStateContent(
      {List<ImageEntity> images, bool endReached}) = _$_ImagesStateContent;

  List<ImageEntity> get images;
  bool get endReached;
  @JsonKey(ignore: true)
  _$ImagesStateContentCopyWith<_ImagesStateContent> get copyWith;
}

/// @nodoc
abstract class _$ImagesStateEmptyContentCopyWith<$Res> {
  factory _$ImagesStateEmptyContentCopyWith(_ImagesStateEmptyContent value,
          $Res Function(_ImagesStateEmptyContent) then) =
      __$ImagesStateEmptyContentCopyWithImpl<$Res>;
}

/// @nodoc
class __$ImagesStateEmptyContentCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res>
    implements _$ImagesStateEmptyContentCopyWith<$Res> {
  __$ImagesStateEmptyContentCopyWithImpl(_ImagesStateEmptyContent _value,
      $Res Function(_ImagesStateEmptyContent) _then)
      : super(_value, (v) => _then(v as _ImagesStateEmptyContent));

  @override
  _ImagesStateEmptyContent get _value =>
      super._value as _ImagesStateEmptyContent;
}

/// @nodoc
class _$_ImagesStateEmptyContent implements _ImagesStateEmptyContent {
  const _$_ImagesStateEmptyContent();

  @override
  String toString() {
    return 'ImagesState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ImagesStateEmptyContent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult content(List<ImageEntity> images, bool endReached),
    @required TResult empty(),
    @required TResult error(Failure failure),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(empty != null);
    assert(error != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult content(List<ImageEntity> images, bool endReached),
    TResult empty(),
    TResult error(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_ImagesStateLoading value),
    @required TResult content(_ImagesStateContent value),
    @required TResult empty(_ImagesStateEmptyContent value),
    @required TResult error(_ImagesStateError value),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(empty != null);
    assert(error != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_ImagesStateLoading value),
    TResult content(_ImagesStateContent value),
    TResult empty(_ImagesStateEmptyContent value),
    TResult error(_ImagesStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _ImagesStateEmptyContent implements ImagesState {
  const factory _ImagesStateEmptyContent() = _$_ImagesStateEmptyContent;
}

/// @nodoc
abstract class _$ImagesStateErrorCopyWith<$Res> {
  factory _$ImagesStateErrorCopyWith(
          _ImagesStateError value, $Res Function(_ImagesStateError) then) =
      __$ImagesStateErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ImagesStateErrorCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res>
    implements _$ImagesStateErrorCopyWith<$Res> {
  __$ImagesStateErrorCopyWithImpl(
      _ImagesStateError _value, $Res Function(_ImagesStateError) _then)
      : super(_value, (v) => _then(v as _ImagesStateError));

  @override
  _ImagesStateError get _value => super._value as _ImagesStateError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_ImagesStateError(
      failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_ImagesStateError implements _ImagesStateError {
  const _$_ImagesStateError(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ImagesState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagesStateError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ImagesStateErrorCopyWith<_ImagesStateError> get copyWith =>
      __$ImagesStateErrorCopyWithImpl<_ImagesStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult content(List<ImageEntity> images, bool endReached),
    @required TResult empty(),
    @required TResult error(Failure failure),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(empty != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult content(List<ImageEntity> images, bool endReached),
    TResult empty(),
    TResult error(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_ImagesStateLoading value),
    @required TResult content(_ImagesStateContent value),
    @required TResult empty(_ImagesStateEmptyContent value),
    @required TResult error(_ImagesStateError value),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(empty != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_ImagesStateLoading value),
    TResult content(_ImagesStateContent value),
    TResult empty(_ImagesStateEmptyContent value),
    TResult error(_ImagesStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ImagesStateError implements ImagesState {
  const factory _ImagesStateError(Failure failure) = _$_ImagesStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$ImagesStateErrorCopyWith<_ImagesStateError> get copyWith;
}
