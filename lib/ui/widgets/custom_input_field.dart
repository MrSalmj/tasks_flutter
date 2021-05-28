import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController? controller;
  final Color? backgroundColor;
  final String? hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final Function(String)? onChanged;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry margin;
  const CustomInputField(
      {Key? key,
      @required this.controller,
      @required this.hintText,
      this.backgroundColor,
      this.obscureText = false,
      this.prefixIcon,
      this.onChanged,
      this.textStyle,
      this.margin = const EdgeInsets.symmetric(horizontal: 0),
      this.hintStyle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 50,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
        style: textStyle,
        onChanged: onChanged,
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            hintStyle: hintStyle,
            hintText: hintText,
            border: InputBorder.none,
            prefixIcon: prefixIcon,
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
      ),
    );
  }
}
