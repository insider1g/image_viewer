// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ImageStateTearOff {
  const _$ImageStateTearOff();

// ignore: unused_element
  _ImageStateTransition transition() {
    return const _ImageStateTransition();
  }

// ignore: unused_element
  _ImageStateLoaded loaded() {
    return const _ImageStateLoaded();
  }
}

/// @nodoc
// ignore: unused_element
const $ImageState = _$ImageStateTearOff();

/// @nodoc
mixin _$ImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult transition(),
    @required TResult loaded(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult transition(),
    TResult loaded(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult transition(_ImageStateTransition value),
    @required TResult loaded(_ImageStateLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult transition(_ImageStateTransition value),
    TResult loaded(_ImageStateLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res> implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  final ImageState _value;
  // ignore: unused_field
  final $Res Function(ImageState) _then;
}

/// @nodoc
abstract class _$ImageStateTransitionCopyWith<$Res> {
  factory _$ImageStateTransitionCopyWith(_ImageStateTransition value,
          $Res Function(_ImageStateTransition) then) =
      __$ImageStateTransitionCopyWithImpl<$Res>;
}

/// @nodoc
class __$ImageStateTransitionCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res>
    implements _$ImageStateTransitionCopyWith<$Res> {
  __$ImageStateTransitionCopyWithImpl(
      _ImageStateTransition _value, $Res Function(_ImageStateTransition) _then)
      : super(_value, (v) => _then(v as _ImageStateTransition));

  @override
  _ImageStateTransition get _value => super._value as _ImageStateTransition;
}

/// @nodoc
class _$_ImageStateTransition implements _ImageStateTransition {
  const _$_ImageStateTransition();

  @override
  String toString() {
    return 'ImageState.transition()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ImageStateTransition);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult transition(),
    @required TResult loaded(),
  }) {
    assert(transition != null);
    assert(loaded != null);
    return transition();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult transition(),
    TResult loaded(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (transition != null) {
      return transition();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult transition(_ImageStateTransition value),
    @required TResult loaded(_ImageStateLoaded value),
  }) {
    assert(transition != null);
    assert(loaded != null);
    return transition(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult transition(_ImageStateTransition value),
    TResult loaded(_ImageStateLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (transition != null) {
      return transition(this);
    }
    return orElse();
  }
}

abstract class _ImageStateTransition implements ImageState {
  const factory _ImageStateTransition() = _$_ImageStateTransition;
}

/// @nodoc
abstract class _$ImageStateLoadedCopyWith<$Res> {
  factory _$ImageStateLoadedCopyWith(
          _ImageStateLoaded value, $Res Function(_ImageStateLoaded) then) =
      __$ImageStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ImageStateLoadedCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res>
    implements _$ImageStateLoadedCopyWith<$Res> {
  __$ImageStateLoadedCopyWithImpl(
      _ImageStateLoaded _value, $Res Function(_ImageStateLoaded) _then)
      : super(_value, (v) => _then(v as _ImageStateLoaded));

  @override
  _ImageStateLoaded get _value => super._value as _ImageStateLoaded;
}

/// @nodoc
class _$_ImageStateLoaded implements _ImageStateLoaded {
  const _$_ImageStateLoaded();

  @override
  String toString() {
    return 'ImageState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ImageStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult transition(),
    @required TResult loaded(),
  }) {
    assert(transition != null);
    assert(loaded != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult transition(),
    TResult loaded(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult transition(_ImageStateTransition value),
    @required TResult loaded(_ImageStateLoaded value),
  }) {
    assert(transition != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult transition(_ImageStateTransition value),
    TResult loaded(_ImageStateLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ImageStateLoaded implements ImageState {
  const factory _ImageStateLoaded() = _$_ImageStateLoaded;
}
