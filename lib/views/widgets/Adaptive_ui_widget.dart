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
      if (constrains.maxWidth < 800) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < 1000) {
        return tabletLayout(context);
      } else {
        return disktopLayout(context);
      }
    });
  }
}
