import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/adaptive_layout/adaptive_layout_widget.dart';
import 'package:reponsive_dash_board/widgets/adaptive_layout/dashboard_desktop_layout.dart';
import 'package:reponsive_dash_board/widgets/adaptive_layout/dashboard_mobile_layout.dart';
import 'package:reponsive_dash_board/widgets/adaptive_layout/dashboard_tablet_layout.dart';
import 'package:reponsive_dash_board/widgets/drawer/custom_drawer_widget.dart';

class DashboearView extends StatefulWidget {
  const DashboearView({super.key});

  @override
  State<DashboearView> createState() => _DashboearViewState();
}

class _DashboearViewState extends State<DashboearView> {
  
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800 ? AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFF4DB7F2),
        leading: IconButton(
          onPressed: (){
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ) : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardTesktopLayout(),
      ),
      drawer: MediaQuery.sizeOf(context).width < 800 ? const CustomDrawerWidget() : null,
    );
  }
}
