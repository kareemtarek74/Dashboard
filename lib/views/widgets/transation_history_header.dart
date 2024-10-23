import 'package:dashboard/Utils/styles.dart';
import 'package:flutter/material.dart';

class TransationHistoryHeader extends StatelessWidget {
  const TransationHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: Styles.styleSemiBold20,
        ),
        Text(
          'See all',
          style: Styles.styleMedium16.copyWith(color: const Color(0xff4EB7F2)),
        )
      ],
    );
  }
}
