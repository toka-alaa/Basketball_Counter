import 'package:flutter/cupertino.dart';

class TextACounter extends StatelessWidget {
  final int score1 ;
  const TextACounter({super.key, required this.score1});

  @override
  Widget build(BuildContext context) {
    return Text(score1.toString(),
      style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w600
      ),);
  }
}


class TextBCounter extends StatelessWidget {

  final int score2 ;
  const TextBCounter({super.key, required this.score2});

  @override
  Widget build(BuildContext context) {
    return Text(score2.toString(),
      style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w600
      ),);
  }
}
