import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/views/widgets/Date_Option.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: Styles.styleSemiBold20,
        ),
        DateOption()
      ],
    );
  }
}
