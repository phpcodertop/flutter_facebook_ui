import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final bool isLastFieldOnForm;

  const AppInputField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.isLastFieldOnForm = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff1A2B32),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade800, width: 2),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        textAlign: TextAlign.left,
        textInputAction: isLastFieldOnForm ? TextInputAction.done : TextInputAction.next,
        obscureText: isPassword ? true : false,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
            fontFamily: 'Tahoma',
          ),
          fillColor: Colors.white
        ),
        style: TextStyle(
          color: Colors.grey.shade500,
        ),
      ),
    );
  }
}
