import 'package:dashboard/views/widgets/Adaptive_ui_widget.dart';
import 'package:dashboard/views/widgets/Disktop_ui_layout.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveUi(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        disktopLayout: (context) => const DisktopUiLayout(),
      ),
    );
  }
}
