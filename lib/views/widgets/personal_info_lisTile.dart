import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/models/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonalInfoListile extends StatelessWidget {
  const PersonalInfoListile({
    super.key,
    required this.userModel,
  });
  final UserInfoModel userModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userModel.icon),
          title: Text(
            userModel.title,
            style: Styles.styleSemiBold16,
          ),
          subtitle: Text(
            userModel.subtitle,
            style: Styles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
