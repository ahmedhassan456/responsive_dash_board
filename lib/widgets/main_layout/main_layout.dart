import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/main_layout/all_expenses/all_expenses_widget.dart';
import 'package:reponsive_dash_board/widgets/main_layout/quick_invoice/quick_invoice.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AllExpenses()),
        SliverToBoxAdapter(child: SizedBox(height: 24.0,)),
        SliverToBoxAdapter(child: QuickInvoice()),
      ],
    );
  }
}