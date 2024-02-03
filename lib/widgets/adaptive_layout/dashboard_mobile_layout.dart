import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/card_and_transaction_and_income_layout.dart';
import 'package:reponsive_dash_board/widgets/main_layout/main_layout.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MainLayout(),
          SizedBox(height: 24.0,),
          CardAndTransactionAndIncomeLayout(),
        ],
      ),
    );
  }
}