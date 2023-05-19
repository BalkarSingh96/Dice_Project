import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-images/dice-1.png';
  var currentDiceroll = 2;

  void rollDice() {
    setState(() {
      currentDiceroll = randomizer.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-images/dice-$diceRoll.png';
      // print('Change Image');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$currentDiceroll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top:20,
              // ),
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
