import 'package:dashboard/views/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: List.generate(3, (index) => const MyCard()));
  }
}
