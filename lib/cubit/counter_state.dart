part of 'counter_cubit.dart';


class CounterState {
  final int score1;

  final int score2;

  CounterState({required this.score1, required this.score2});

CounterState any ({int? score1 , int? score2})
{
  return  CounterState (
    score1: score1?? this.score1,
    score2:  score2?? this.score2,
  );
}

}


