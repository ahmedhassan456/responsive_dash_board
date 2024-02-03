import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/card_layout/card_layout.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/income_section/income_section.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/transaction_layout/transaction_layout.dart';

class CardAndTransactionAndIncomeLayout extends StatelessWidget {
  const CardAndTransactionAndIncomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CardLayout()),
          SliverToBoxAdapter(
            child: Divider(
              height: 40.0,
              color: Color(0xFFF1F1F1),
            ),
          ),
          SliverToBoxAdapter(child: TransactionLayout()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24.0,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: IncomeSection(),
          ),
        ],
      ),
    );
  }
}
