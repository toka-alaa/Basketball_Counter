import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

        body: Center(child: Column(
          spacing: 40,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  spacing: 10,
                  children: [
                    Text("Team A",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600
                    ),),
                    Text(score1.toString(),
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600
                      ),),

                    TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.black
                        ),
                        onPressed: (){
                          setState(() {
                            score1 += 1;
                          });
                        },
                        child: Text("Add 1 point",
                        style: TextStyle(
                          color: Colors.white
                        ),)),

                    TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.black
                        ),
                        onPressed: (){
                          setState(() {
                            score1 += 2;
                          });
                        },
                        child: Text("Add 2 point",
                          style: TextStyle(
                              color: Colors.white
                          ),)),

                    TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.black
                        ),
                        onPressed: (){

                          setState(() {
                            score1 +=3;
                          });
                        },
                        child: Text("Add 3 point",
                          style: TextStyle(
                              color: Colors.white
                          ),))
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
                    Text("Team B",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600
                      ),),
                    Text(score2.toString(),
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600
                      ),),

                    TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.black
                        ),
                        onPressed: (){
                          setState(() {
                            score2 += 1;
                          });
                        },
                        child: Text("Add 1 point",
                          style: TextStyle(
                              color: Colors.white
                          ),)),

                    TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.black
                        ),
                        onPressed: (){
                          setState(() {
                            score2 += 2;
                          });
                        },
                        child: Text("Add 2 point",
                          style: TextStyle(
                              color: Colors.white
                          ),)),

                    TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.black
                        ),
                        onPressed: (){
                          setState(() {
                            score2 += 3;
                          });
                        },
                        child: Text("Add 3 point",
                          style: TextStyle(
                              color: Colors.white
                          ),))
                  ],
                ),
              ],
            ),
            TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.only(
                    left: 50,
                    right: 50
                  ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.black
                ),
                onPressed: () {
                  setState(() {
                    score1 = 0;
                    score2 =0;
                  });

                }, child: Text('Reset',

            style: TextStyle(
              fontSize: 15,
                      color: Colors.white
              ,)),)
          ],
        )),
      ),
    );
  }
}
