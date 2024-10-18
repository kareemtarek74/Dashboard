import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/views/widgets/latest_transaction_listView.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Styles.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransactionListview(),
      ],
    );
  }
}
