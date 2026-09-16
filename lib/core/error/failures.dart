sealed class Failures {
  final String message;
  const Failures(this.message);
}

class NetworkFailure extends Failures {
  const NetworkFailure(super.message);
}

class ServerFailure extends Failures {
  const ServerFailure(super.message);
}

class NotFoundFailure extends Failures {
  const NotFoundFailure(super.message);
}

class CacheFailure extends Failures {
  const CacheFailure(super.message);
}
