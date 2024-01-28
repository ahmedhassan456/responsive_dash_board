import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/models/all_expenses_item_model.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';
import 'package:reponsive_dash_board/widgets/main_layout/all_expenses/all_expenses_header_of_body.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.model,
    required this.isActive,
  });

  final ALlExpensesItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: isActive ? const Color(0xFF4DB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          side: isActive ? const BorderSide() : const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeaderOfBody(model: model, isActive: isActive),
          const SizedBox(
            height: 34.0,
          ),
          Text(
            model.name,
            style: isActive ? AppStyles.styleSemiBold16.copyWith(color: Colors.white) : AppStyles.styleSemiBold16,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'April 2022',
            style: isActive ? AppStyles.styleRegular14.copyWith(color: Colors.white)
                  : AppStyles.styleRegular14.copyWith(color: const Color(0xFFAAAAAA)),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            '\$20,129',
            style: isActive ? AppStyles.styleSemiBold24.copyWith(color: Colors.white)
                  : AppStyles.styleSemiBold24.copyWith(color: const Color(0xFF4DB7F2)),
          ),
        ],
      ),
    );
  }
}
