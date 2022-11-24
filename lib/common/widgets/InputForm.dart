import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final String hintText;
  final Function handleOnChange;
  final String? errorMsg;
  final bool obscureText;
  const InputForm({
    super.key,
    required this.hintText,
    required this.handleOnChange,
    this.errorMsg,
    this.obscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    const outline = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
    );

    return SizedBox(
      child: TextField(
        onChanged: (value) => handleOnChange(value),
        autofocus: true,
        style: const TextStyle(color: Colors.white),
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          errorText: errorMsg,
          contentPadding: const EdgeInsets.only(left: 20),
          hintStyle: Theme.of(context).textTheme.displayMedium,
          filled: true,
          fillColor: Colors.white12,
          errorBorder: outline,
          focusedBorder: outline,
          border: outline,
        ),
      ),
    );
  }
}
