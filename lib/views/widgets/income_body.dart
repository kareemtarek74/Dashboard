import 'package:dashboard/views/widgets/income_chart.dart';
import 'package:dashboard/views/widgets/income_detailed_chart.dart';
import 'package:dashboard/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width > 699 && width < 752 || width > 1000 && width < 1083
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(),
              const SizedBox(
                width: 120,
                height: 120,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: IncimeDetailedChart(),
                ),
              ),
            ],
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: IncomeChart(),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
