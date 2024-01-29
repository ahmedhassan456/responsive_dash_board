import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';

class CustomSendAndDetailsMoney extends StatelessWidget {
  const CustomSendAndDetailsMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Center(
            child: Text(
              'Add more details',
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleSemiBold18,
            ),
          ),
        ),
        const SizedBox(
          width: 24.0,
        ),
        Expanded(
          child: Container(
            height: 62,
            decoration: ShapeDecoration(
              color: const Color(0xFF4DB7F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                'Send Money',
                style: AppStyles.styleSemiBold18.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}