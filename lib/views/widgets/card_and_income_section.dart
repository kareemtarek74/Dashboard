import 'package:dashboard/views/widgets/card_section.dart';
import 'package:dashboard/views/widgets/income_section.dart';
import 'package:flutter/material.dart';

class CardAndIncomeSection extends StatelessWidget {
  const CardAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CardSection(),
            SizedBox(
              height: 24,
            ),
            IncomeSection()
          ],
        ),
      ),
    );
  }
}
