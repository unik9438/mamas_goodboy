// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReusableTextFormField extends StatelessWidget {
  final String labelText;
  final dynamic shape;
  final bool isPassword;
  final TextEditingController controller;

  const ReusableTextFormField({
    Key? key,
    required this.labelText,
    required this.shape,
    required this.isPassword,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
      ),
    );
  }
}
