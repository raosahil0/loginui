import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextInputType textInputType;
  final String hintText;
  final Widget prefixIcon;
  final String defaultText;

  final bool obscureText;
  final String? field;

  final TextInputAction actionKeyboard;

  const TextFormFieldWidget({
    required this.hintText,
    required this.textInputType,
    required this.defaultText,
    this.obscureText = false,
    required this.field,
    this.actionKeyboard = TextInputAction.next,
    required this.prefixIcon,
  });

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  double bottomPaddingToError = 12;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      keyboardType: widget.textInputType,
      textInputAction: widget.actionKeyboard,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontWeight: FontWeight.w200,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.2,
      ),
      initialValue: widget.defaultText,
      decoration: textInputDecoration.copyWith(
        prefixIcon: widget.prefixIcon,
        iconColor: Colors.brown[900],
        hintText: widget.hintText,
        fillColor: Colors.grey[200],
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade100),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.brown),
        ),
        hintStyle: TextStyle(
          color: Colors.brown[900],
          fontSize: 14.0,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.2,
        ),
        contentPadding: EdgeInsets.only(
            top: 10, bottom: bottomPaddingToError, left: 8.0, right: 8.0),
        isDense: true,
        errorStyle: TextStyle(
          color: Colors.brown[900],
          fontSize: 12.0,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.2,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.brown),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.brown),
        ),
      ),
    );
  }
}

const textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  contentPadding: EdgeInsets.all(12.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 2.0),
  ),
);
