import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/all_expenses/all_expenses_header.dart';
import 'package:reponsive_dash_board/widgets/all_expenses/all_expenses_body.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16.0,),
          AllExpensesBody(),
        ],
      ),
    );
  }
}
