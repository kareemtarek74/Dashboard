import 'package:dashboard/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonalInfoListile extends StatelessWidget {
  const PersonalInfoListile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon});
  final String title, subtitle, icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(icon),
        title: Text(
          title,
          style: Styles.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: Styles.styleRegular12,
        ),
      ),
    );
  }
}
