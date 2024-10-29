import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/views/widgets/mobile_layout_body.dart';
import 'package:flutter/material.dart';

class MobileUiLayout extends StatefulWidget {
  const MobileUiLayout({super.key});

  @override
  State<MobileUiLayout> createState() => _MobileUiLayoutState();
}

class _MobileUiLayoutState extends State<MobileUiLayout> {
  double xOffset = 0;
  double yOffset = 0;
  bool isDrawerOpened = false;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(isDrawerOpened ? .85 : 1.00)
            ..rotateZ(isDrawerOpened ? -50 : 0),
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: isDrawerOpened
                ? BorderRadius.circular(40)
                : BorderRadius.circular(0),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpened
                        ? GestureDetector(
                            child: const Icon(Icons.arrow_back_ios,
                                color: Color(0xff4EB7F2)),
                            onTap: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                isDrawerOpened = false;
                              });
                            },
                          )
                        : GestureDetector(
                            child: const Icon(
                              Icons.menu,
                              color: Color(0xff4EB7F2),
                            ),
                            onTap: () {
                              setState(() {
                                xOffset = 290;
                                yOffset = 80;
                                isDrawerOpened = true;
                              });
                            },
                          ),
                    Text(
                      'Dashboard',
                      style: Styles.styleBold16(context).copyWith(fontSize: 20),
                    ),
                    Container()
                  ],
                ),
              ),
              const MobileLayoutBody(),
            ],
          ),
        ),
      ),
    ]);
  }
}
