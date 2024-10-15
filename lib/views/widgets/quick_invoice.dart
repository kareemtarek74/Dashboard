import 'package:dashboard/views/widgets/Latest_transaction.dart';
import 'package:dashboard/views/widgets/custom_background_container.dart';
import 'package:dashboard/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [QuickInvoiceHeader(), LatestTransaction()],
        ));
  }
}
