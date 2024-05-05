import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button.operation({
    super.key,
    required this.text,
    required this.onPressed,
    this.isBig = false,
    this.color = operationButtonColor,
  });

  const Button.large({
    super.key,
    required this.text,
    required this.onPressed,
    this.isBig = true,
    this.color = defaultButtonColor,
  });

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.isBig = false,
    this.color = defaultButtonColor,
  });

  static const darkButtonColor = Color.fromRGBO(57, 0, 90, 1);
  static const defaultButtonColor = Color.fromRGBO(111, 1, 175, 1);
  static const operationButtonColor = Color.fromRGBO(0, 58, 173, 1);

  final String text;
  final bool isBig;
  //final bool isMed;
  final Color color;
  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isBig ? 3 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const LinearBorder(),
          backgroundColor: color,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => onPressed(text),
      ),
    );
  }
}
