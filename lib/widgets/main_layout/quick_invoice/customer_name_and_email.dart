import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/main_layout/quick_invoice/custom_customer_input.dart';

class CustomerNameAndEmail extends StatelessWidget {
  const CustomerNameAndEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: CustomCustomerInput(
            inputName: 'Customer name',
            hintText: 'Type customer name',
          ),
        ),
        SizedBox(width: 16.0,),
        Expanded(
          child: CustomCustomerInput(
            inputName: 'Customer Email', 
            hintText: 'Type customer email',
          ),
        ),
      ],
    );
  }
}