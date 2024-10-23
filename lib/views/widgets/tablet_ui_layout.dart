import 'package:dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:dashboard/views/widgets/card_and_income_section.dart';
import 'package:flutter/material.dart';

class TabletUiLayout extends StatelessWidget {
  const TabletUiLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 16),
        Expanded(flex: 4, child: AllExpensesAndQuickInvoiceSection()),
        SizedBox(
          width: 20,
        ),
        Expanded(flex: 3, child: CardAndIncomeSection()),
        SizedBox(width: 16),
      ],
    );
  }
}
