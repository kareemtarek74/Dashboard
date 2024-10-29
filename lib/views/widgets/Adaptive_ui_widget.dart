import 'package:dashboard/Utils/size_config.dart';
import 'package:flutter/material.dart';

class AdaptiveUi extends StatelessWidget {
  const AdaptiveUi(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.disktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, disktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < SizeConfig.tablet) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < SizeConfig.disktop) {
        return tabletLayout(context);
      } else {
        return disktopLayout(context);
      }
    });
  }
}
