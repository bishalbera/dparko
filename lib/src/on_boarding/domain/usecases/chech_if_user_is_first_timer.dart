import 'package:parko/core/usecases/usecases.dart';
import 'package:parko/core/utils/typedef.dart';
import 'package:parko/src/on_boarding/domain/repos/on_boarding_repo.dart';

class CheckIfUserIsFirstTimer extends FutureUsecaseWithoutParams<bool> {
  const CheckIfUserIsFirstTimer(this._repo);

  final OnBoardingRepo _repo;

  @override
  ResultFuture<bool> call() => _repo.checkIfUserIsFirstTimer();
  
}