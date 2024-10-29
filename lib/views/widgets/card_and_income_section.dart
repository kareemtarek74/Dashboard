import 'package:dashboard/views/widgets/card_section.dart';
import 'package:dashboard/views/widgets/income_section.dart';
import 'package:flutter/material.dart';

class CardAndIncomeSection extends StatelessWidget {
  const CardAndIncomeSection({super.key, this.topPadding});
  final EdgeInsetsGeometry? topPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: topPadding ?? EdgeInsets.zero,
      child: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
