import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/button_ui.dart';
import '../widgets/counter_text.dart';
import '../widgets/team_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int score1 =0;
  int score2 =0;

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BasketBall Counter"),
        ),

        body: Center(
            child: Column(
              spacing: 40,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      spacing: 10,
                      children: [
                        TeamName(name: "Team A"),
                        BlocBuilder<CounterCubit , CounterState>(
                            builder: (context , state)
                        {
                          return TextACounter(score1: state.score1, );
                        }),

                        Buttons(ontap: (){
                          context.read<CounterCubit>().addPointTA(1);
                        }, txt: "Add 1 Point"),

                        Buttons(ontap: (){
                          context.read<CounterCubit>().addPointTA(2);
                        }, txt: "Add 2 Point"),

                        Buttons(ontap: (){
                          context.read<CounterCubit>().addPointTA(3);
                        }, txt: "Add 3 Point"),
                      ],
                    ),

                    SizedBox(
                      height: 250,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),

                    Column(
                      spacing: 10,
                      children: [
                        TeamName(name: "Team B"),
                        BlocBuilder<CounterCubit , CounterState>(
                            builder: (context , state )
                        {
                          return TextBCounter(score2: state.score2,);
                        }),


                        Buttons(ontap: (){
                          context.read<CounterCubit>().addPointTB(1);
                        }, txt: "Add 1 Point"),

                        Buttons(ontap: (){
                          context.read<CounterCubit>().addPointTB(2);
                        }, txt: "Add 2 Point"),

                        Buttons(ontap: (){
                          context.read<CounterCubit>().addPointTB(3);
                        }, txt: "Add 3 Point"),
                      ],
                    ),
                  ],
                ),

              ],
            )),
      ),
    );
  }
}



