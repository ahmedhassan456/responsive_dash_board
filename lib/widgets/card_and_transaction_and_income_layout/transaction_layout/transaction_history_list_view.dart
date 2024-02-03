import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/models/transaction_history_model.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/transaction_layout/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionHistoryModel> transactionList = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: '\$20,129',
      isWithDrawal: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page Project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '\$2,000',
      isWithDrawal: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App Project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '\$2,129',
      isWithDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transactionList.length,
      itemBuilder: (context, index) => TransactionHistoryItem(transactionHistoryModel: transactionList[index],),
    );
  }
}