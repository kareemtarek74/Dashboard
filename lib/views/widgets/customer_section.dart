import 'package:dashboard/views/widgets/custom_title_textField.dart';
import 'package:flutter/material.dart';

class CustomerSection extends StatelessWidget {
  const CustomerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomTitleTextfield(
            title: 'Customer name',
            hint: 'Type customer name',
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: CustomTitleTextfield(
            title: 'Customer Email',
            hint: 'Type customer email',
          ),
        ),
      ],
    );
  }
}
