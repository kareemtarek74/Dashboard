import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/models/income_details_model.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const detailsList = [
    IncomeDetailsModel(
        color: Color(0xff208CC8), title: 'Design service', percent: '40%'),
    IncomeDetailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', percent: '25%'),
    IncomeDetailsModel(
        color: Color(0xff064061), title: 'Product royalti', percent: '20%'),
    IncomeDetailsModel(
        color: Color(0xffE2DECD), title: 'Other', percent: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: detailsList.length,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(data: detailsList[index]);
      },
    );
  }
}

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.data});
  final IncomeDetailsModel data;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: data.color,
          ),
        ),
        title: Text(
          data.title,
          style: Styles.styleRegular16.copyWith(color: const Color(0xff064061)),
        ),
        trailing: Text(
          data.percent,
          style: Styles.styleMedium16.copyWith(color: const Color(0xff208CC8)),
        ),
      ),
    );
  }
}
