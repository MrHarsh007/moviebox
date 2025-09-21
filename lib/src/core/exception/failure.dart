import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);
  final String message;

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class SnsSdkFailure extends Failure {
  const SnsSdkFailure(super.message);
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(super.message);
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(super.message);
}

class CacheFailure extends Failure {
  const CacheFailure(super.message);
}

class ApiExceptionFailure extends Failure {
  const ApiExceptionFailure(super.message);
}

// Firestore specific failure
class FirestoreFailure extends Failure {
  const FirestoreFailure(super.message);
}
