import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DateOption extends StatelessWidget {
  const DateOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xffF1F1F1), width: 1)),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: Styles.styleMedium16,
          ),
          const SizedBox(
            width: 18,
          ),
          SvgPicture.asset(Assets.assetsImagesArrowDown)
        ],
      ),
    );
  }
}
