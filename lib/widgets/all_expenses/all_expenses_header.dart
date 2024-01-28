import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16.copyWith(color: const Color(0xFF064061)),
              ),
              const SizedBox(width:18.0),
              Transform.rotate(
                angle: -1.571,
                child: const Icon(Icons.arrow_back_ios_new),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
