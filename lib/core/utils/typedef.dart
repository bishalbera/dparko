import 'package:dartz/dartz.dart';
import 'package:parko/core/errors/failures.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
