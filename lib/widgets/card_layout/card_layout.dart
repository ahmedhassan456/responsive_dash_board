import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';
import 'package:reponsive_dash_board/widgets/card_layout/card_view.dart';

class CardLayout extends StatelessWidget {
  const CardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      color: Colors.white,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(
            height: 20.0,
          ),
          CardView(),
        ],
      ),
    );
  }
}
