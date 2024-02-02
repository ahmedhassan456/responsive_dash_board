
import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Text(
          'See all',
          style: AppStyles.styleMedium16.copyWith(color: const Color(0xFF4EB7F2),),
        ),
      ],
    );
  }
}