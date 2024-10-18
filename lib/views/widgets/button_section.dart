import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            text: 'Add more details',
            color: Colors.white,
            style: Styles.styleSemiBold18,
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(child: CustomButton(text: 'Send Money'))
      ],
    );
  }
}
