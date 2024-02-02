import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/views/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const RsponsiveDashboard(), // Wrap your app
    ),
  );
}

class RsponsiveDashboard extends StatelessWidget {
  const RsponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
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
