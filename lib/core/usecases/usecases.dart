import 'package:parko/core/utils/typedef.dart';

abstract class FutureUsecaseWithParams<Type, Params> {
  const FutureUsecaseWithParams();

  ResultFuture<Type> call(Params params);
}

abstract class FutureUsecaseWithoutParams<Type> {
  const FutureUsecaseWithoutParams();

  ResultFuture<Type> call();
}
