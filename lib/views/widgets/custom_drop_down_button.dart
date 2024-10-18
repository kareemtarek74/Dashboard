import 'package:dashboard/Utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String? valueChoosed;
  List<String> items = ['USD', 'EUR', 'RUB', 'EGP'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: 62,
          decoration: BoxDecoration(
            color: const Color(0xffFAFAFA),
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: DropdownButton(
                isExpanded: true,
                underline: const SizedBox(),
                isDense: true,
                itemHeight: 50,
                hint: const Text(
                  'USD',
                  style: TextStyle(
                      color: Color(0xffAAAAAA), fontWeight: FontWeight.w400),
                ),
                icon: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.assetsImagesArrowDown,
                      height: 18,
                    ),
                  ),
                ),
                value: valueChoosed,
                onChanged: (value) {
                  setState(() {
                    valueChoosed = value;
                  });
                },
                items: items.map(
                  (e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  },
                ).toList()),
          ),
        ),
      ],
    );
  }
}
