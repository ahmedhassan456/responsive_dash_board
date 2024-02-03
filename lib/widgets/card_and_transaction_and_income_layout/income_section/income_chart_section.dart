import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartSection extends StatelessWidget {
  const IncomeChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
        swapAnimationDuration: const Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.linear,
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
