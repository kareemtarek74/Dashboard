import 'package:dashboard/models/transaction_history_model.dart';
import 'package:dashboard/views/widgets/transaction_history_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionHistoryModel> transactionItemsList = [
    TransactionHistoryModel(
      isWithdrawal: true,
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
    ),
    TransactionHistoryModel(
      isWithdrawal: false,
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
    ),
    TransactionHistoryModel(
      isWithdrawal: false,
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: r'$20,129',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: transactionItemsList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 12),
          child: TransactionHistoryItem(
              transactionModel: transactionItemsList[index]),
        );
      },
    );
  }
}
