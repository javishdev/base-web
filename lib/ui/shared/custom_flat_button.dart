import 'package:flutter/material.dart';

class CustonFlatButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;
  const CustonFlatButton({
    super.key,
    required this.text,
    this.color = Colors.pink,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          primary: color,
        ),
        onPressed: () => onPressed(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(text),
        ));
  }
}
