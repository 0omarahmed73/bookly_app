import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioException(DioException dioExcetipn) {
    switch (dioExcetipn.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout With API server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout in connection with API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout in connection with API server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioExcetipn.response!.statusCode!, dioExcetipn.response);
      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(
            'Connection to API server failed due to internet connection');
      case DioExceptionType.unknown:
        if (dioExcetipn.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error , please try again');
      default:
        return ServerFailure('Opps There is an error try again later');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request is not found, please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try again later');
    } else {
      return ServerFailure('Opps There is an error try again later');
    }
  }
}
