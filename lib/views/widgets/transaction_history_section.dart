import 'package:dashboard/views/widgets/transaction_history_body.dart';
import 'package:dashboard/views/widgets/transation_history_header.dart';
import 'package:flutter/material.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransationHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        TransactionHistoryBody()
      ],
    );
  }
}
