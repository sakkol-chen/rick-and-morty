import 'package:ferry/ferry.dart';
import 'package:gql_link/gql_link.dart';
import 'failures.dart';

class LinkErrorParser {
  static Failures parse(OperationResponse response) {
    if (response.linkException != null) {
      final exception = response.linkException!;

      // 5xx Server Crashes
      if (exception is ServerException) {
        return const ServerFailure(
          'Citadel server error. Please try again later.',
        );
      }

      // Offline, Socket Timeouts, or Connection Drops
      return const NetworkFailure(
        'Connection failed. Please check your portal.',
      );
    }

    // GraphQL Application Errors (e.g., query formatting, not found)
    if (response.graphqlErrors != null && response.graphqlErrors!.isNotEmpty) {
      final errorMsg = response.graphqlErrors!.first.message;
      if (errorMsg.toLowerCase().contains('404')) {
        return const NotFoundFailure('Entity not found.');
      }
      return ServerFailure(errorMsg);
    }

    return const ServerFailure('An unexpected error occurred.');
  }
}
