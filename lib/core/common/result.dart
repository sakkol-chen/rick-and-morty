import 'package:rick_and_morty/core/error/failures.dart'; // Absolute import here too!

// Note the generic 'E extends Failures' (plural)
sealed class Result<S, E extends Failures> {
  const Result();
}

class Success<S, E extends Failures> extends Result<S, E> {
  final S value;
  const Success(this.value);
}

class Error<S, E extends Failures> extends Result<S, E> {
  final E failure; // Or final E failure; 
  const Error(this.failure);
}