import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/models/income_item_details_model.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/income_section/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeItemDetails> items = [
    IncomeItemDetails(
      color: Color(0xFF208BC7),
      title: 'Design service',
      value: '40%',
    ),
    IncomeItemDetails(
      color: Color(0xFF4DB7F2),
      title: 'Design product',
      value: '25%',
    ),
    IncomeItemDetails(
      color: Color(0xFF064060),
      title: 'Product royalti',
      value: '20%',
    ),
    IncomeItemDetails(
      color: Color(0xFFE2DECD),
      title: 'Other',
      value: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(itemModel: items[index],);
      },
    );
  }
}