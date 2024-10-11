import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

import 'custom_drawer_item.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({
    super.key,
  });

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', icon: Assets.assetsImagesDashborad),
    DrawerItemModel(
        title: 'My Transaction', icon: Assets.assetsImagesTransaction),
    DrawerItemModel(title: 'Statistics', icon: Assets.assetsImagesStatistics),
    DrawerItemModel(title: 'Wallet Account', icon: Assets.assetsImagesWallet),
    DrawerItemModel(
        title: 'My Investments', icon: Assets.assetsImagesInvestments)
  ];

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: CustomDrawerListView.items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (selectedIndex != index) {
            setState(() {
              selectedIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: CustomDrawerItem(
            drawerItemModel: CustomDrawerListView.items[index],
            isActive: selectedIndex == index,
          ),
        ),
      ),
    );
  }
}
