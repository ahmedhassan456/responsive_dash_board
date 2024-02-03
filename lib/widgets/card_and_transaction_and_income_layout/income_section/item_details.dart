import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/models/income_item_details_model.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemModel,});

  final IncomeItemDetails itemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12.0,
        width: 12.0,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: itemModel.color,
        ),
      ),
      title: Text(
        itemModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        itemModel.value,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}