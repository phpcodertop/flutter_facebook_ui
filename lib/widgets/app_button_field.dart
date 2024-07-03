import 'package:flutter/material.dart';

class AppButtonField extends StatelessWidget {
  final Function()? onPress;
  final Color color;
  final Color textColor;
  final String text;
  final Border? border;

  const AppButtonField({
    super.key,
    this.onPress,
    required this.color,
    required this.textColor,
    required this.text,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
          border: border,
        ),
        child: Center(
          child: Text(
            text,
            style:
                TextStyle(fontSize: 18, color: textColor, fontFamily: 'Tahoma'),
          ),
        ),
      ),
    );
  }
}
