import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/views/widgets/my_card_section.dart';
import 'package:dashboard/views/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My card',
                style: Styles.styleSemiBold20(context),
              ),
              const SizedBox(
                height: 20,
              ),
              const MyCardSection(),
              const Divider(
                height: 40,
                color: Color(0xffF1F1F1),
              ),
              const TransactionHistorySection()
            ],
          )),
    );
  }
}
