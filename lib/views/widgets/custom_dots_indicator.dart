import 'package:dashboard/views/widgets/custom_dot.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, required this.pageNum});
  final int pageNum;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: CustomDot(
                    isActive: pageNum == index,
                  ),
                )));
  }
}
