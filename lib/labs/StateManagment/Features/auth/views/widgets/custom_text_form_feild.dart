import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';

class CustomTextFormFeild extends StatefulWidget {
  const CustomTextFormFeild({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.isPassword,
    this.onChanged,
  });
  final String hintText;
  final TextInputType keyboardType;
  final bool? isPassword;
  final void Function(String)? onChanged;

  @override
  State<CustomTextFormFeild> createState() => _CustomTextFormFeildState();
}

class _CustomTextFormFeildState extends State<CustomTextFormFeild> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This Field is required';
        }
        if (widget.hintText == 'Email' &&
            !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
          return 'Must Use a real Email';
        }
        if (widget.isPassword == true && value.length < 8) {
          return 'must be geater than 8 digits';
        }
        return null;
      },
      obscureText: widget.isPassword == true ? !isVisible : false,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        suffixIcon:
            widget.isPassword ?? false
                ? Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      isVisible = !isVisible;
                      setState(() {});
                    },
                    icon:
                        !isVisible
                            ? Icon(Icons.visibility, color: AppColors.primary)
                            : Icon(
                              Icons.visibility_off,
                              color: AppColors.primary,
                            ),
                  ),
                )
                : null,
        filled: true,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.primary.withOpacity(0.5),
        ),
        fillColor: AppColors.textFeilsSecondary,
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
