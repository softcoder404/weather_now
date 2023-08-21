import 'package:dartz/dartz.dart';
import 'package:weather_app/core/errors/exceptions.dart';

typedef NetworkResponse<T> = Future<Either<ServerException, T>>;
