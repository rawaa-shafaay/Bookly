import 'package:dio/dio.dart';

sealed class Failure {
  final String message;
  const Failure(this.message);

  @override
  String toString() => '$runtimeType: $message';
}

class ServerFailure extends Failure {
  final int? code;
  const ServerFailure(super.message, {this.code});

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure("Connection timed out. Please try again.");
      case DioExceptionType.sendTimeout:
        return const ServerFailure("The request took too long to send.");
      case DioExceptionType.receiveTimeout:
        return const ServerFailure("The server took too long to respond.");
      case DioExceptionType.cancel:
        return const ServerFailure("The request was cancelled.");
      case DioExceptionType.connectionError:
        return const ServerFailure(
          "No internet connection. Please check your network.",
        );

      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode ?? 0;
        final statusMessage = e.response?.statusMessage ?? 'Unknown';

        final bodyMessage = _extractErrorMessage(e.response);
        final fallbackMessage = _mapStatusCodeToMessage(
          statusCode,
          statusMessage,
        );

        return ServerFailure(
          bodyMessage.isNotEmpty ? bodyMessage : fallbackMessage,
          code: statusCode,
        );

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

  static String _extractErrorMessage(Response? response) {
    try {
      final data = response?.data;
      if (data is Map<String, dynamic> && data.containsKey('message')) {
        return data['message'] as String;
      }
    } catch (_) {}
    return '';
  }
}
