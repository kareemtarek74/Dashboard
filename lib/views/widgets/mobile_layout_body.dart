import 'package:dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:flutter/material.dart';

import 'card_and_income_section.dart';

class MobileLayoutBody extends StatefulWidget {
  const MobileLayoutBody({
    super.key,
  });

  @override
  State<MobileLayoutBody> createState() => _MobileLayoutBodyState();
}

class _MobileLayoutBodyState extends State<MobileLayoutBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      AllExpensesAndQuickInvoiceSection(),
      CardAndIncomeSection(),
      SizedBox(height: 16),
    ]);
  }
}
