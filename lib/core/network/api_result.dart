
import 'package:doctors_app/core/network/api_error_handler.dart';
import 'package:doctors_app/core/network/errors_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part  'api_result.freezed.dart';
@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler error) = Failure<T>;
}