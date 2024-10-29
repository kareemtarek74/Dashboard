import 'package:dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:dashboard/views/widgets/card_and_income_section.dart';
import 'package:dashboard/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DisktopUiLayout extends StatelessWidget {
  const DisktopUiLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(
            cardColor: Color(0xffFAFAFA),
            backGroundColor: Colors.white,
          ),
        ),
        SizedBox(width: 32),
        Expanded(
            flex: 4,
            child: AllExpensesAndQuickInvoiceSection(
              topPadding: EdgeInsets.only(top: 40),
            )),
        SizedBox(
          width: 20,
        ),
        Expanded(
            flex: 3,
            child: CardAndIncomeSection(
              topPadding: EdgeInsets.only(top: 40),
            )),
        SizedBox(width: 32),
      ],
    );
  }
}
