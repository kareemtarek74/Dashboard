import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/views/widgets/custom_drop_down_button.dart';
import 'package:dashboard/views/widgets/custom_title_textField.dart';
import 'package:flutter/material.dart';

class ItemSection extends StatelessWidget {
  const ItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomTitleTextfield(
            title: 'Item name',
            hint: 'Type Item name',
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Item mount',
              style: Styles.styleMedium16(context),
            ),
            const SizedBox(
              height: 12,
            ),
            const CustomDropDownButton(),
          ],
        )),
      ],
    );
  }
}
