import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/views/widgets/custom_drop_down_button.dart';
import 'package:dashboard/views/widgets/custom_title_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemSection extends StatelessWidget {
  const ItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomTitleTextfield(
            title: 'Item name',
            hint: 'Type Item name',
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Item mount',
              style: Styles.styleMedium16,
            ),
            SizedBox(
              height: 12,
            ),
            CustomDropDownButton(),
          ],
        )),
      ],
    );
  }
}
