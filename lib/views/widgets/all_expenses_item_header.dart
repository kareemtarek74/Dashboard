import 'package:dashboard/Utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.icon, required this.isActive});
  final String icon;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
              shape: const OvalBorder(),
              color: isActive
                  ? Colors.white.withOpacity(.1)
                  : const Color(0xffFAFAFA)),
          child: Center(
            child: SvgPicture.asset(
              icon,
              colorFilter: isActive
                  ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
                  : null,
            ),
          ),
        ),
        SvgPicture.asset(isActive
            ? Assets.assetsImagesArrowRightWight
            : Assets.assetsImagesArrowRight)
      ],
    );
  }
}
