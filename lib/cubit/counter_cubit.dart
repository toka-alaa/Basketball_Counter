
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>
{
   CounterCubit() : super(CounterState(score1: 0, score2: 0));
   
   void addPointTA (int point)
   {
     emit(state.any(score1: state.score1+point));

   }

   void addPointTB (int point)
   {
     emit(state.any(score2: state.score2+point));

   }

   void reset ()
   {
     emit(CounterState(score1: 0, score2: 0));
   }

}