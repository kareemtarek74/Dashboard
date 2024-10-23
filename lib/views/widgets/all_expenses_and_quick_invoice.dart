import 'package:dashboard/views/widgets/all_expenses.dart';
import 'package:dashboard/views/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(
                height: 20,
              ),
              QuickInvoice()
            ],
          ),
        ),
      ),
    );
  }
}
