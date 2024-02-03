import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/card_and_transaction_and_income_layout.dart';
import 'package:reponsive_dash_board/widgets/drawer/custom_drawer_widget.dart';
import 'package:reponsive_dash_board/widgets/main_layout/main_layout.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                MainLayout(),
                SizedBox(height: 24.0,),
                CardAndTransactionAndIncomeLayout(),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 32.0,
        ),
      ],
    );
  }
}
