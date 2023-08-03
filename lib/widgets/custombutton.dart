import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

// ignore: unused_import
import 'constants.dart';

// ignore: must_be_immutable
class CustomButton extends StatefulWidget {
  VoidCallback onClick;

  Color? buttonColor;

  double? borderRadius;

  Color? textColor;

  String buttonText;

  Color? borderColor;
  // Color textColor;
  // Color color;
  // Color splashColor,
  // double borderRadius,
  // double minWidth,
  // double height,
  // Color borderSideColor,
  // TextStyle style,
  // Widget leadingIcon,
  // Widget trailingIcon
  CustomButton({
    Key? key,
    required this.onClick,
    this.borderRadius,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    required this.buttonText,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: Colors.brown[900],
          border: Border.all(color: widget.borderColor ?? Colors.white),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 0)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onClick,
          child: Container(
            child: Center(
              child: Text(
                widget.buttonText,
                style: TextStyle(
                    color: widget.textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
