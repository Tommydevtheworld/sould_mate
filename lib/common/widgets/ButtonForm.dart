import 'package:flutter/material.dart';

class ButtonForm extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color foregroundColor;
  final Function action;

  const ButtonForm({
    Key? key,
    required this.text,
    this.backgroundColor = Colors.red,
    this.foregroundColor = Colors.white,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(315, 40),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))),
      onPressed: () {
        action();
      },
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
