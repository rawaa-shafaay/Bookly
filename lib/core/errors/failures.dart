import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timed out. Please try again.");
      case DioExceptionType.sendTimeout:
        return ServerFailure("The request took too long to send.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("The server took too long to respond.");
      case DioExceptionType.cancel:
        return ServerFailure("The request was cancelled.");
      case DioExceptionType.connectionError:
        return ServerFailure(
          "No internet connection. Please check your network.",
        );
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode ?? 0;
        final statusMessage = e.response?.statusMessage ?? 'Unknown';

        final message = _mapStatusCodeToMessage(statusCode, statusMessage);
        return ServerFailure(message);

      case DioExceptionType.unknown:
      default:
        return ServerFailure("Unexpected error occurred: ${e.message}");
    }
  }

  static String _mapStatusCodeToMessage(int statusCode, String statusMessage) {
    switch (statusCode) {
      case 400:
        return "Bad request. Please check your input.";
      case 401:
        return "Unauthorized. Please log in.";
      case 403:
        return "Access denied. You don’t have permission.";
      case 404:
        return "Resource not found.";
      case 500:
        return "Internal server error. Try again later.";
      case 503:
        return "Service unavailable. Try again shortly.";
      default:
        return "Server error [$statusCode]: $statusMessage";
    }
  }
}
