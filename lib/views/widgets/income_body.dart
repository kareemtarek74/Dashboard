import 'package:dashboard/views/widgets/income_chart.dart';
import 'package:dashboard/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 120 / 120,
            child: IncomeChart(),
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Expanded(child: IncomeDetails())
      ],
    );
  }
}
