import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  InputText({
    this.initialValue,
    this.readOnly = false,
    this.controller,
    this.iconPrefix,
    this.iconColor,
    this.labelText,
    this.filled = true,
    this.fontColor,
    this.fontSize,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.obscureText = false,
    this.suffixIcon,
    this.hintText,
    this.minLines = 1,
    this.maxLines,
    this.maxLength,
    this.border,
    this.onChanged,
    this.onTap,
    this.onSaved,
  });

  final String? initialValue;
  final bool? readOnly;
  final TextEditingController? controller;
  final TextCapitalization textCapitalization;
  final IconData? iconPrefix;
  final Color? iconColor;
  final String? labelText;
  final bool? filled;
  final Color? fontColor;
  final double? fontSize;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final String Function(String)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? suffixIcon;
  final String? hintText;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final InputBorder? border;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function(String)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.done,
      textCapitalization: textCapitalization,
      initialValue: initialValue,
      maxLength: maxLength,
      style: TextStyle(color: fontColor, fontSize: fontSize),
      decoration: InputDecoration(
        border: border,
        icon: Icon(
          iconPrefix,
          color: iconColor,
          size: 20.0,
        ),
        labelText: labelText,
        labelStyle: TextStyle(color: fontColor),
        filled: filled,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: enabledBorderColor ?? Colors.white,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: focusedBorderColor ?? Colors.white,
          ),
        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
      ),
      readOnly: readOnly ?? true,
      controller: controller,
      //onSaved: onSaved,
      onChanged: onChanged,
      onTap: onTap,
      keyboardType: keyboardType,
      obscureText: obscureText ?? true,
      maxLines: maxLines,
      minLines: minLines,
    );
  }
}
