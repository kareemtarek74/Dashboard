import 'package:dashboard/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: (hintText),
        hintStyle:
            Styles.styleRegular16.copyWith(color: const Color(0xffAAAAAA)),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        focusColor: const Color(0xffFAFAFA),
        border: customBorder(),
        enabledBorder: customBorder(),
        contentPadding: const EdgeInsets.all(24),
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
      gapPadding: 24,
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    );
  }
}
