import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();   ///////

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
  return Dice();
  }

}
class Dice extends State<DiceRoller>{

  var currentDiceRoll = 2;
  void rolldice() {
    
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;    //again dont use var keyword before activeDiceImage nahi ti state set nahi hoga
    });
  }
  @override
  Widget build(BuildContext context) {
   return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/dice-$currentDiceRoll.png',
                width: 200,
              ),
              const SizedBox(height: 60,),
              TextButton(
                  onPressed: rolldice,  
                  style: TextButton.styleFrom(//padding: EdgeInsets.only(top: 30),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 36),
                  ),
                  child: const Text('roll dice !'))
            ],
          );
  }

}