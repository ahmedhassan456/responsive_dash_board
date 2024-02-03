import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/income_section/income_chart_section.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/income_section/income_details.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/income_section/income_header_widget.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          IncomeHeaderWidget(),
          SizedBox(height: 16.0,),
          Expanded(child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChartSection()),
              Expanded(child: IncomeDetails()),
            ],
          )),
        ],
      ),
    );
  }
}
