import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/transaction_layout/transaction_history_list_view.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/transaction_layout/transaction_history_widget.dart';

class TransactionLayout extends StatelessWidget {
  const TransactionLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TransactionHistoryWidget(),
          const SizedBox(height: 20.0,),
          Text(
            '13 April 2022',
            style: AppStyles.styleMedium16.copyWith(color: const Color(0xFFAAAAAA)),
          ),
          const SizedBox(height: 16.0,),
          const TransactionHistoryListView(),
        ],
      ),
    );
  }
}