import 'package:dashboard/views/widgets/custom_dots_indicator.dart';
import 'package:dashboard/views/widgets/my_card_page_view.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({
    super.key,
  });

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

PageController pageController = PageController();
int pageNum = 0;

class _MyCardSectionState extends State<MyCardSection> {
  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        pageNum = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCardPageView(
          controller: pageController,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomDotsIndicator(
          pageNum: pageNum,
        ),
      ],
    );
  }
}
