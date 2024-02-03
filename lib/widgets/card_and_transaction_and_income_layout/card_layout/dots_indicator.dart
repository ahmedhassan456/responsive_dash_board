import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/card_layout/custom_dot_indicator.dart';

class DotsIndictor extends StatelessWidget {
  const DotsIndictor({super.key, required this.currentPageIndex});

  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: CustomDotIndector(
            isActive: index == currentPageIndex,
          ),
        ),
      ),
    );
  }
}
