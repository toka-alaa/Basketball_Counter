import 'package:basketball_counter/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

void main() {
  runApp(const BasketBallCounter());
}

class BasketBallCounter extends StatelessWidget {
  const BasketBallCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
       child:  MaterialApp(
          home: HomePage(),
        ),
        create: (context) => CounterCubit() );
  }
}


