import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/views/dashboard_view.dart';

void main() {
  runApp(const RsponsiveDashboard());
}

class RsponsiveDashboard extends StatelessWidget {
  const RsponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Dashboard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const DashboearView(),
    );
  }
}
