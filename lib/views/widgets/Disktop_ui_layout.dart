import 'package:dashboard/views/widgets/all_expenses.dart';
import 'package:dashboard/views/widgets/custom_drawer.dart';
import 'package:dashboard/views/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DisktopUiLayout extends StatelessWidget {
  const DisktopUiLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: AllExpenses(),
                ),
                QuickInvoice()
              ],
            ))
      ],
    );
  }
}
