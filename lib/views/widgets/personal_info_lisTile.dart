import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/models/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonalInfoListile extends StatelessWidget {
  const PersonalInfoListile({
    super.key,
    required this.userModel,
    required this.cardColor,
  });
  final UserInfoModel userModel;
  final Color? cardColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userModel.icon),
          title: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              maxLines: 1,
              userModel.title,
              style: Styles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              maxLines: 1,
              userModel.subtitle,
              style: Styles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
