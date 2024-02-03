import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';

class IncomeHeaderWidget extends StatelessWidget {
  const IncomeHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Income',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1.0,
                color: Color(0xFFF1F1F1),
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16.copyWith(color: const Color(0xFF064060)),
              ),
              const SizedBox(width: 16.0,),
              Transform.rotate(
                angle: -1.571,
                child: const Icon(Icons.arrow_back_ios_outlined),
              ),
            ],
          ),
        ),
      ],
    );
  }
}