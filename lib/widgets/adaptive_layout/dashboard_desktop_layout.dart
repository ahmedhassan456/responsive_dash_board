import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/card_layout/card_layout.dart';
import 'package:reponsive_dash_board/widgets/drawer/custom_drawer_widget.dart';
import 'package:reponsive_dash_board/widgets/main_layout/main_layout.dart';

class DashboardTesktopLayout extends StatelessWidget {
  const DashboardTesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: Row(
        children: [
          Expanded(
            child: CustomDrawerWidget(),
          ),
          SizedBox(
            width: 32.0,
          ),
          Expanded(
            flex: 3,
            child: MainLayout(),
          ),
          SizedBox(
            width: 24.0,
          ),
          Expanded(
            flex: 2,
            child: CardLayout(),
          ),
        ],
      ),
    );
  }
}
