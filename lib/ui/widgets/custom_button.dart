import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final customText;
  final double? width;
  final borderRadius;
  final onPressed;
  final decoration;
  final backgroundColor;
  const CustomButton(
      {Key? key,
      @required this.customText,
      @required this.width,
      this.onPressed,
      @required this.borderRadius,
      this.decoration,
      @required this.backgroundColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: decoration,
          width: width,
          child: TextButton(
            onPressed: onPressed,
            child: customText,
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(vertical: 15)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(backgroundColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ))),
          ),
        ),
      ],
    );
  }
}
