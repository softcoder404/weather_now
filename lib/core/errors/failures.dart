import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

// General failures
class ServerFailure extends Failure {
  final String message;
  ServerFailure(this.message);
  @override
  List<Object> get props => [message];
}

class NoInternetFailure extends ServerFailure {
  NoInternetFailure(String message) : super(message);
}
