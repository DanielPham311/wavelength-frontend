import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PaginatedResponse<T> {
  final List<T> content;
  final int total;
  final int limit;
  final int offset;

  const PaginatedResponse({
    required this.content,
    required this.total,
    required this.limit,
    required this.offset,
  });

  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) =>
      _$PaginatedResponseFromJson(json, (e) => fromJsonT(e as Map<String, dynamic>));

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      _$PaginatedResponseToJson(this, toJsonT);
}

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required int status,
    required String error,
    String? timestamp,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}
