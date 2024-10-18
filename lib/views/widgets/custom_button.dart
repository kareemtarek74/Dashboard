import 'package:dashboard/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.style, this.color});
  final String text;
  final TextStyle? style;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? const Color(0xff4EB7F2),
            elevation: 0,
            padding: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: () {},
        child: Center(
            child: Text(
          text,
          style: style ?? Styles.styleSemiBold18.copyWith(color: Colors.white),
        )),
      ),
    );
  }
}
