import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/models/expenses_item_model.dart';
import 'package:dashboard/views/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});
  static const items = [
    ExpensesItemModel(
      icon: Assets.assetsImagesBalance,
      title: 'Balance',
      subtitle: 'April 2022',
      price: r'$20,129',
    ),
    ExpensesItemModel(
      icon: Assets.assetsImagesIncome,
      title: 'Income',
      subtitle: 'April 2022',
      price: r'$20,129',
    ),
    ExpensesItemModel(
      icon: Assets.assetsImagesExpenses,
      title: 'Expenses',
      subtitle: 'April 2022',
      price: r'$20,129',
    ),
  ];

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

int num = 0;

class _AllExpensesBodyState extends State<AllExpensesBody> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesBody.items.asMap().entries.map((e) {
        int index = e.key;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    num = index;
                  });
                },
                child: AllExpensesItem(
                  itemModel: e.value,
                  isActive: num == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      num = index;
                    });
                  },
                  child: AllExpensesItem(
                    itemModel: e.value,
                    isActive: num == index,
                  )));
        }
      }).toList(),
    );
  }
}
