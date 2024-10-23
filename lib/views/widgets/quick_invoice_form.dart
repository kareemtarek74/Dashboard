import 'package:dashboard/views/widgets/button_section.dart';
import 'package:dashboard/views/widgets/customer_section.dart';
import 'package:dashboard/views/widgets/item_section.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomerSection(),
        SizedBox(
          height: 24,
        ),
        ItemSection(),
        SizedBox(
          height: 24,
        ),
        ButtonSection(),
      ],
    );
  }
}
