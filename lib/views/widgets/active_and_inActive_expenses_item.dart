import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/models/expenses_item_model.dart';
import 'package:flutter/material.dart';

import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final ExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(
          color: const Color(0xffF1F1F1),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: itemModel.icon,
            isActive: false,
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.scaleDown,
                child: Text(
                  itemModel.title,
                  style: Styles.styleSemiBold16(context),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.scaleDown,
                child: Text(
                  itemModel.subtitle,
                  style: Styles.styleRegular14(context),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.scaleDown,
                child: Text(
                  itemModel.price,
                  style: Styles.styleSemiBold24(context),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final ExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff4EB7F2),
        border: Border.all(
          color: const Color(0xffF1F1F1),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: itemModel.icon,
            isActive: true,
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.scaleDown,
                child: Text(itemModel.title,
                    style: Styles.styleSemiBold16(context)
                        .copyWith(color: Colors.white)),
              ),
              const SizedBox(
                height: 8,
              ),
              FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.scaleDown,
                child: Text(
                  itemModel.subtitle,
                  style: Styles.styleRegular14(context)
                      .copyWith(color: const Color(0xffFAFAFA)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.scaleDown,
                child: Text(
                  itemModel.price,
                  style: Styles.styleSemiBold24(context)
                      .copyWith(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
