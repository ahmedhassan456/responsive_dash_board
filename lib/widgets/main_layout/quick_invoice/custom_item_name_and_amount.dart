import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/main_layout/quick_invoice/custom_customer_input.dart';

class CustomItemNameAndAmount extends StatelessWidget {
  const CustomItemNameAndAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomCustomerInput(
            inputName: 'Item name',
            hintText: 'Type Item name',
          ),
        ),
        SizedBox(width: 16.0,),
        Expanded(
          child: CustomCustomerInput(
            inputName: 'Item amount',
            hintText: 'USD',
          ),
        ),
      ],
    );
  }
}