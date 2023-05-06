import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  
  final String text;

  const Buttons(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(199, 255, 193, 7),
                borderRadius: BorderRadius.all(
                  Radius.circular(50)
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: Icon(Icons.games_outlined, size: 30,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 13,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}