import 'package:dashboard/Utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncimeDetailedChart extends StatefulWidget {
  const IncimeDetailedChart({super.key});

  @override
  State<IncimeDetailedChart> createState() => _IncimeDetailedChartState();
}

class _IncimeDetailedChartState extends State<IncimeDetailedChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      getChartData(),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        centerSpaceRadius: 40,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              title: activeIndex == 0 ? 'Design Service' : '40%',
              titleStyle: activeIndex == 0
                  ? Styles.styleBold16(context)
                      .copyWith(color: const Color(0xff064061))
                  : Styles.styleBold16(context)
                      .copyWith(color: Colors.white, fontSize: 13),
              titlePositionPercentageOffset:
                  activeIndex == 0 ? const Offset(3, 2).direction : null,
              value: 40,
              color: const Color(0xff208CC8),
              radius: activeIndex == 0 ? 40 : 30,
              showTitle: true),
          PieChartSectionData(
              title: activeIndex == 1 ? 'Design product' : '25%',
              titleStyle: activeIndex == 1
                  ? Styles.styleBold16(context)
                      .copyWith(color: const Color(0xff064061))
                  : Styles.styleBold16(context)
                      .copyWith(color: Colors.white, fontSize: 13),
              titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,
              value: 25,
              color: const Color(0xff4EB7F2),
              radius: activeIndex == 1 ? 40 : 30,
              showTitle: true),
          PieChartSectionData(
              title: activeIndex == 2 ? 'Other' : '22%',
              titleStyle: activeIndex == 2
                  ? Styles.styleBold16(context)
                      .copyWith(color: const Color(0xff064061))
                  : Styles.styleBold16(context)
                      .copyWith(color: Colors.white, fontSize: 13),
              titlePositionPercentageOffset: activeIndex == 2 ? .8 : null,
              value: 22,
              color: const Color(0xffE2DECD),
              radius: activeIndex == 2 ? 40 : 30,
              showTitle: true),
          PieChartSectionData(
              title: activeIndex == 3 ? 'Product royalti' : '20%',
              titleStyle: activeIndex == 3
                  ? Styles.styleBold16(context).copyWith(
                      color: const Color.fromARGB(255, 42, 146, 207),
                      fontSize: 12)
                  : Styles.styleBold16(context)
                      .copyWith(color: Colors.white, fontSize: 13),
              titlePositionPercentageOffset: activeIndex == 3 ? 1.3 : null,
              value: 20,
              color: const Color(0xff064061),
              radius: activeIndex == 3 ? 40 : 30,
              showTitle: true),
        ]);
  }
}
