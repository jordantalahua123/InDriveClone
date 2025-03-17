import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  String text;
  Color color;
  Color textColor;

  DefaultButton({
    required this.text,
    this.color = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 30, left: 20, right: 20),
      //alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
