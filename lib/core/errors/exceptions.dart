class AppException implements Exception {
  final String message;
  final int? statusCode;
  const AppException(this.message, [this.statusCode]);

  @override
  String toString() => 'AppException: $message (status: $statusCode)';
}

class UnauthorizedException extends AppException {
  const UnauthorizedException() : super('Unauthorized', 401);
}

class ForbiddenException extends AppException {
  const ForbiddenException() : super('Forbidden', 403);
}

class NotFoundException extends AppException {
  const NotFoundException(String resource) : super('$resource not found', 404);
}

class ValidationException extends AppException {
  final Map<String, String> fieldErrors;
  const ValidationException(super.message, this.fieldErrors) : super();
}
