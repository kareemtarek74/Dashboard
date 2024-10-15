import 'package:dashboard/views/widgets/all_expenses_body.dart';
import 'package:dashboard/views/widgets/all_expenses_header.dart';
import 'package:dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesBody()
        ],
      ),
    );
  }
}
