import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/views/widgets/personal_info_lisTile.dart';
import 'package:flutter/material.dart';

class LatestTransactionListview extends StatelessWidget {
  const LatestTransactionListview({super.key});
  static const user = [
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        icon: Assets.assetsImagesAccount1),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        icon: Assets.assetsImagesAccount2),
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        icon: Assets.assetsImagesAccount1)
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: user
            .map(
              (e) => IntrinsicWidth(child: PersonalInfoListile(userModel: e)),
            )
            .toList(),
      ),
    );
  }
}
