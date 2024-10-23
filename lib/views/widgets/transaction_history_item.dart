import 'package:dashboard/Utils/styles.dart';
import 'package:flutter/material.dart';

import '../../models/transaction_history_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transactionModel});
  final TransactionHistoryModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: const Color(0xffFAFAFA),
      ),
      child: ListTile(contentPadding: EdgeInsets.zero,
        title: Text(
          transactionModel.title,
          style: Styles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionModel.date,
          style: Styles.styleRegular16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: Styles.styleSemiBold20.copyWith(
              color: transactionModel.isWithdrawal
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
