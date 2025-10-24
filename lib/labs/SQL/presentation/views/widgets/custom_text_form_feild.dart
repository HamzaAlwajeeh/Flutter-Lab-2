import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';

class CustomTextFormFeild extends StatefulWidget {
  const CustomTextFormFeild({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.onChanged,
    this.initValue,
  });
  final String hintText;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final String? initValue;

  @override
  State<CustomTextFormFeild> createState() => _CustomTextFormFeildState();
}

class _CustomTextFormFeildState extends State<CustomTextFormFeild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initValue,
      onChanged: widget.onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      style: TextStyle(
        color: AppColors.primary,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        filled: true,
        fillColor: AppColors.textFeilsPrimary,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide.none,
    );
  }
}
