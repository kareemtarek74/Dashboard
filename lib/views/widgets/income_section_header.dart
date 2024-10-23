import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/views/widgets/Date_Option.dart';
import 'package:flutter/material.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: Styles.styleSemiBold20,
        ),
        DateOption()
      ],
    );
  }
}
