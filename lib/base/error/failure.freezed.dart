// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  _FailureNetwork network() {
    return const _FailureNetwork();
  }

// ignore: unused_element
  _FailureUnauthorized unauthorized() {
    return const _FailureUnauthorized();
  }

// ignore: unused_element
  _FailureUnhandled unhandled(dynamic exception) {
    return _FailureUnhandled(
      exception,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult network(),
    @required TResult unauthorized(),
    @required TResult unhandled(dynamic exception),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult network(),
    TResult unauthorized(),
    TResult unhandled(dynamic exception),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult network(_FailureNetwork value),
    @required TResult unauthorized(_FailureUnauthorized value),
    @required TResult unhandled(_FailureUnhandled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult network(_FailureNetwork value),
    TResult unauthorized(_FailureUnauthorized value),
    TResult unhandled(_FailureUnhandled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$FailureNetworkCopyWith<$Res> {
  factory _$FailureNetworkCopyWith(
          _FailureNetwork value, $Res Function(_FailureNetwork) then) =
      __$FailureNetworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureNetworkCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$FailureNetworkCopyWith<$Res> {
  __$FailureNetworkCopyWithImpl(
      _FailureNetwork _value, $Res Function(_FailureNetwork) _then)
      : super(_value, (v) => _then(v as _FailureNetwork));

  @override
  _FailureNetwork get _value => super._value as _FailureNetwork;
}

/// @nodoc
class _$_FailureNetwork implements _FailureNetwork {
  const _$_FailureNetwork();

  @override
  String toString() {
    return 'Failure.network()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FailureNetwork);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult network(),
    @required TResult unauthorized(),
    @required TResult unhandled(dynamic exception),
  }) {
    assert(network != null);
    assert(unauthorized != null);
    assert(unhandled != null);
    return network();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult network(),
    TResult unauthorized(),
    TResult unhandled(dynamic exception),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult network(_FailureNetwork value),
    @required TResult unauthorized(_FailureUnauthorized value),
    @required TResult unhandled(_FailureUnhandled value),
  }) {
    assert(network != null);
    assert(unauthorized != null);
    assert(unhandled != null);
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult network(_FailureNetwork value),
    TResult unauthorized(_FailureUnauthorized value),
    TResult unhandled(_FailureUnhandled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _FailureNetwork implements Failure {
  const factory _FailureNetwork() = _$_FailureNetwork;
}

/// @nodoc
abstract class _$FailureUnauthorizedCopyWith<$Res> {
  factory _$FailureUnauthorizedCopyWith(_FailureUnauthorized value,
          $Res Function(_FailureUnauthorized) then) =
      __$FailureUnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureUnauthorizedCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$FailureUnauthorizedCopyWith<$Res> {
  __$FailureUnauthorizedCopyWithImpl(
      _FailureUnauthorized _value, $Res Function(_FailureUnauthorized) _then)
      : super(_value, (v) => _then(v as _FailureUnauthorized));

  @override
  _FailureUnauthorized get _value => super._value as _FailureUnauthorized;
}

/// @nodoc
class _$_FailureUnauthorized implements _FailureUnauthorized {
  const _$_FailureUnauthorized();

  @override
  String toString() {
    return 'Failure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FailureUnauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult network(),
    @required TResult unauthorized(),
    @required TResult unhandled(dynamic exception),
  }) {
    assert(network != null);
    assert(unauthorized != null);
    assert(unhandled != null);
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult network(),
    TResult unauthorized(),
    TResult unhandled(dynamic exception),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult network(_FailureNetwork value),
    @required TResult unauthorized(_FailureUnauthorized value),
    @required TResult unhandled(_FailureUnhandled value),
  }) {
    assert(network != null);
    assert(unauthorized != null);
    assert(unhandled != null);
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult network(_FailureNetwork value),
    TResult unauthorized(_FailureUnauthorized value),
    TResult unhandled(_FailureUnhandled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _FailureUnauthorized implements Failure {
  const factory _FailureUnauthorized() = _$_FailureUnauthorized;
}

/// @nodoc
abstract class _$FailureUnhandledCopyWith<$Res> {
  factory _$FailureUnhandledCopyWith(
          _FailureUnhandled value, $Res Function(_FailureUnhandled) then) =
      __$FailureUnhandledCopyWithImpl<$Res>;
  $Res call({dynamic exception});
}

/// @nodoc
class __$FailureUnhandledCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$FailureUnhandledCopyWith<$Res> {
  __$FailureUnhandledCopyWithImpl(
      _FailureUnhandled _value, $Res Function(_FailureUnhandled) _then)
      : super(_value, (v) => _then(v as _FailureUnhandled));

  @override
  _FailureUnhandled get _value => super._value as _FailureUnhandled;

  @override
  $Res call({
    Object exception = freezed,
  }) {
    return _then(_FailureUnhandled(
      exception == freezed ? _value.exception : exception as dynamic,
    ));
  }
}

/// @nodoc
class _$_FailureUnhandled implements _FailureUnhandled {
  const _$_FailureUnhandled(this.exception) : assert(exception != null);

  @override
  final dynamic exception;

  @override
  String toString() {
    return 'Failure.unhandled(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailureUnhandled &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$FailureUnhandledCopyWith<_FailureUnhandled> get copyWith =>
      __$FailureUnhandledCopyWithImpl<_FailureUnhandled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult network(),
    @required TResult unauthorized(),
    @required TResult unhandled(dynamic exception),
  }) {
    assert(network != null);
    assert(unauthorized != null);
    assert(unhandled != null);
    return unhandled(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult network(),
    TResult unauthorized(),
    TResult unhandled(dynamic exception),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unhandled != null) {
      return unhandled(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult network(_FailureNetwork value),
    @required TResult unauthorized(_FailureUnauthorized value),
    @required TResult unhandled(_FailureUnhandled value),
  }) {
    assert(network != null);
    assert(unauthorized != null);
    assert(unhandled != null);
    return unhandled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult network(_FailureNetwork value),
    TResult unauthorized(_FailureUnauthorized value),
    TResult unhandled(_FailureUnhandled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unhandled != null) {
      return unhandled(this);
    }
    return orElse();
  }
}

abstract class _FailureUnhandled implements Failure {
  const factory _FailureUnhandled(dynamic exception) = _$_FailureUnhandled;

  dynamic get exception;
  @JsonKey(ignore: true)
  _$FailureUnhandledCopyWith<_FailureUnhandled> get copyWith;
}
