import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.network() = _FailureNetwork;
  const factory Failure.unauthorized() = _FailureUnauthorized;
  const factory Failure.unhandled(dynamic exception) = _FailureUnhandled;
}
