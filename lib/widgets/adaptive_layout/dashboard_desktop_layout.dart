import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/all_expenses/all_expenses_widget.dart';
import 'package:reponsive_dash_board/widgets/drawer/custom_drawer_widget.dart';

class DashboardTesktopLayout extends StatelessWidget {
  const DashboardTesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: Row(
        children: [
          Expanded(child: CustomDrawerWidget()),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AllExpenses(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
