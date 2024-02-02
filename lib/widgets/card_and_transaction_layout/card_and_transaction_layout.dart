import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_layout/card_layout/card_layout.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_layout/transaction_layout/transaction_layout.dart';

class CardAndTransactionLayout extends StatelessWidget {
  const CardAndTransactionLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      color: Colors.white,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardLayout(),
          Divider(
            height: 40.0,
            color: Color(0xFFF1F1F1),
          ),
          TransactionLayout(),
        ],
      ),
    );
  }
}
