import 'package:e_commerc_api/consts/global_colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Function validator;
  TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? prefixText;
  final String? suffixText;
  MyTextField(
      {Key? key,
      required this.keyboardType,
      required this.controller,
      required this.validator,
      required this.labelText,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon,
      required this.obscureText,
      this.prefixText,
      this.suffixText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (x) => validator(x),
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixText: prefixText,
        suffixText: suffixText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 15,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 18,
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: lightIconsColor,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
