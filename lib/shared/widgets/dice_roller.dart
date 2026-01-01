import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  late String activeDiceImage;
  late int lastDiceRollSide;

  @override
  void initState() {
    super.initState();
    lastDiceRollSide = random.nextInt(6) + 1;
    activeDiceImage = 'assets/dice-images/dice-$lastDiceRollSide.png';
  }

  void rollDice() {
    final diceRollSide = random.nextInt(6) + 1;

    if (diceRollSide == lastDiceRollSide) {
      rollDice();
      return;
    }

    setState(() {
      lastDiceRollSide = diceRollSide;
      activeDiceImage = 'assets/dice-images/dice-$diceRollSide.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        Image.asset(activeDiceImage, width: 200),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            minimumSize: const Size(100, 50),
            backgroundColor: const Color.fromARGB(255, 11, 144, 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 22),
            elevation: 5,
          ),
          child: const Text("Roll"),
        ),
      ],
    );
  }
}
