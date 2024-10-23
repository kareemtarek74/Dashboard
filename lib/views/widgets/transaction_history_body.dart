import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/views/widgets/transaction_history_list_view.dart';
import 'package:flutter/material.dart';

class TransactionHistoryBody extends StatelessWidget {
  const TransactionHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '13 April 2022',
          style: Styles.styleMedium16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
