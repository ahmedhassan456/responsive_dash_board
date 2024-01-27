import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/adaptive_layout/adaptive_layout_widget.dart';
import 'package:reponsive_dash_board/widgets/adaptive_layout/dashboard_desktop_layout.dart';

class DashboearView extends StatelessWidget {
  const DashboearView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardTesktopLayout(),
      ),
    );
  }
}
