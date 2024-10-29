import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/models/expenses_item_model.dart';
import 'package:dashboard/views/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

final items = [
  const ExpensesItemModel(
    icon: Assets.assetsImagesBalance,
    title: 'Balance',
    subtitle: 'April 2022',
    price: r'$20,129',
  ),
  const ExpensesItemModel(
    icon: Assets.assetsImagesIncome,
    title: 'Income',
    subtitle: 'April 2022',
    price: r'$20,129',
  ),
  const ExpensesItemModel(
    icon: Assets.assetsImagesExpenses,
    title: 'Expenses',
    subtitle: 'April 2022',
    price: r'$20,129',
  ),
];
int num = 0;

class _AllExpensesBodyState extends State<AllExpensesBody> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              num = 0;
            });
          },
          child: AllExpensesItem(
            itemModel: items[0],
            isActive: num == 0,
          ),
        ),
      ),
      const SizedBox(
        width: 8,
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              num = 1;
            });
          },
          child: AllExpensesItem(
            itemModel: items[1],
            isActive: num == 1,
          ),
        ),
      ),
      const SizedBox(
        width: 8,
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              num = 2;
            });
          },
          child: AllExpensesItem(
            itemModel: items[2],
            isActive: num == 2,
          ),
        ),
      ),
    ]);
  }
}
