import 'package:flutter/material.dart';

void buttonSamples() {}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Column(children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFFCF00),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Container(
              width: 300,
              child: Center(
                child: Text('Go back!'),
              ),
            ),
          ),
        ]));
  }
}
