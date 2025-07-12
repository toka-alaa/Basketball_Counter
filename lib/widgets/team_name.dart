
import 'package:flutter/cupertino.dart';

class TeamName extends StatelessWidget {
  String name ="";
  TeamName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(name,
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600
      ),);
  }
}
