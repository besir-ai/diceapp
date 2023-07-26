import 'package:flutter/material.dart';
import 'dart:math';

void main() {
 return runApp(
   MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.red,
       appBar: AppBar(
         title: Text('DİCEE'),
         backgroundColor: Colors.red,
       ),
       body: MyApp(),
     ),
   )
  );

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:ElevatedButton(
              onPressed: () {
                setState(() {

                 leftDiceNumber=Random().nextInt(6)+1;
                 rightDiceNumber=Random().nextInt(6)+1;


                  print('DiceNumberleft=$leftDiceNumber');

                });
              },
              child: Image.asset('images/Alea_$leftDiceNumber.png'),
            ),),

          Expanded(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber=Random().nextInt(6)+1;
                  rightDiceNumber=Random().nextInt(6)+1;
                  print('DiceNumberRight=$rightDiceNumber');
                });
                print('Right button pressed');
              },
              child: Image.asset('images/Alea_$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}



