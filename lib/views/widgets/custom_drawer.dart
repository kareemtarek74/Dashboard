import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/views/widgets/active_and_inActive_item.dart';

import 'package:dashboard/views/widgets/custom_drawer_listView.dart';
import 'package:dashboard/views/widgets/personal_info_lisTile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: PersonalInfoListile(
            userModel: UserInfoModel(
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
                icon: Assets.assetsImagesPersonalIcon),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        CustomDrawerListView(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: InActiveItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting system',
                        icon: Assets.assetsImagesSetting),
                  ),
                ),
                InActiveItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', icon: Assets.assetsImagesLogout),
                ),
                SizedBox(
                  height: 36,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
