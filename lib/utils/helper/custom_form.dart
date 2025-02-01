import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../contollers/sigin_controller.dart';

class CustomForm extends StatefulWidget {
  final String text;
  final int? maxLength;
  final bool suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final VoidCallback? onSuffixTap;
  const CustomForm({
    super.key,
    required this.text,
    required this.validator,
    required this.controller,
    this.keyboardType,
    this.suffixIcon = false,
    this.maxLength,
    this.obscureText = false, 
    this.onSuffixTap, 
  });

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final SiginController controller = Get.put(SiginController());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        obscureText:
            widget.obscureText,
        // maxLength: widget.maxLength,
        validator: widget.validator,
        decoration: InputDecoration(
            hintText: widget.text,
            suffixIcon: widget.suffixIcon
                ? IconButton(
                    onPressed: widget.onSuffixTap,
                    icon: Icon(
                      widget.obscureText
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ))
                : null,
            hintStyle: const TextStyle(color: Color(0xFF626262)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(width: 2, color: Color(0xFFF1F4FF))),
            filled: true,
            fillColor: const Color(0xFFF1F4FF),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(width: 2, color: Color(0xFF1F41BB)))));
  }
}
