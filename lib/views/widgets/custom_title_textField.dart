import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/views/widgets/custom_textField.dart';
import 'package:flutter/material.dart';

class CustomTitleTextfield extends StatelessWidget {
  const CustomTitleTextfield(
      {super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextfield(
          hintText: hint,
        )
      ],
    );
  }
}
