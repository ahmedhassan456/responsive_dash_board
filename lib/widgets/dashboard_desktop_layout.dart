import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/custom_drawer_widget.dart';

class DashboardTesktopLayout extends StatelessWidget {
  const DashboardTesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawerWidget()),
        ],
      ),
    );
  }
}
