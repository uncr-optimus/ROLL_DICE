import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';
import 'package:roll_dice/dice_roller.dart';

class WidgetContainer extends StatelessWidget {
  const WidgetContainer({super.key});
  //var startalign = Alignment.topLeft;
  //var endalign = Alignment.bottomRight;

  

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            //ctrl + spacebar  //we cant use const keyword here (if we use Alignment.topleft in any type of var ) we have to remove it since satrtalign and end align are of var type which can be modified further so here it is arising error since we are wraping the boxdecoration widgetn with const
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(38, 198, 218, 1),
            Color.fromRGBO(236, 64, 122, 1)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: const Center(
          child: DiceRoller(),

          // Text('Hello BC',
          // style: TextStyle(
          //   color: Colors.purple,
          //   fontSize: 45.8,
        ));
    // ),
    //);
  }
}
