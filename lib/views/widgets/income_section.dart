import 'package:dashboard/views/widgets/income_body.dart';
import 'package:dashboard/views/widgets/income_section_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IncomeSectionHeader(),
              SizedBox(
                height: 16,
              ),
              IncomeBody()
            ]));
  }
}
