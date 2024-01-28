import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';
import 'package:reponsive_dash_board/widgets/main_layout/quick_invoice/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16.copyWith(color: const Color(0xFF064060)),
        ),
        const SizedBox(height: 12.0,),
        const LatestTransactionListView(),
      ],
    );
  }
}