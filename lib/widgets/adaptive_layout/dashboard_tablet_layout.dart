import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/adaptive_layout/dashboard_mobile_layout.dart';
import 'package:reponsive_dash_board/widgets/drawer/custom_drawer_widget.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawerWidget(),
        ),
        SizedBox(
          width: 32.0,
        ),
        Expanded(
          flex: 3,
          child: DashboardMobileLayout(),
        ),
        SizedBox(
          width: 32.0,
        ),
      ],
    );
  }
}
