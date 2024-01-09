import 'package:flutter/material.dart';
import 'dart:math';

class DiscRoll extends StatefulWidget {
  const DiscRoll({super.key});

  @override
  State<DiscRoll> createState() => _DiscRollState();


}

class _DiscRollState extends State<DiscRoll> {

  var random=1;

  void rollDice(){
    setState(() {
      random=Random().nextInt(6)+1;


    });
  }




  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assests/dice-$random.png",
            width: 250,
          ),
          ElevatedButton.icon(onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white
              ),icon:const Icon(Icons.games),
              label: Text("Dice Roll")


          ),
        ],
      ),
    );

  }
}
