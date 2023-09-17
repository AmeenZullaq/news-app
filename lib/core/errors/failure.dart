import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException({
    required DioException dioException,
  }) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        return ServerFailure(
          "Request to API server was cancelled",
        );
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          "Connection timeout with API server",
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          "The server certificate is not trusted. Please check your connection and try again.",
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
            "There seems to be a connection error. Please check your internet connection and try again.");

      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          "Receive timeout in connection with API server",
        );

      case DioExceptionType.badResponse:
        return ServerFailure(
          "Received invalid status code: ${dioException.response!.statusCode}",
        );

      case DioExceptionType.sendTimeout:
        return ServerFailure(
          "Send timeout in connection with API server",
        );
      default:
        return ServerFailure('Opps there was an error, pleas try again');
    }
  }
}
