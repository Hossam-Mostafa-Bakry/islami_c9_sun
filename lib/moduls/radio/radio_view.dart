import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Radio",
          style: TextStyle(fontSize: 50, color: Colors.black),
        ),
      ),
    );
  }
}
