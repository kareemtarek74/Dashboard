import 'package:dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:dashboard/views/widgets/card_and_income_section.dart';
import 'package:flutter/material.dart';

class MobileUiLayout extends StatelessWidget {
  const MobileUiLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text('Dashboard'),
        ),
        body: const MobileLayoutBody());
  }
}

class MobileLayoutBody extends StatelessWidget {
  const MobileLayoutBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(child: AllExpensesAndQuickInvoiceSection()),
      SliverToBoxAdapter(child: CardAndIncomeSection()),
      SliverToBoxAdapter(child: SizedBox(height: 16)),
    ]);
  }
}
