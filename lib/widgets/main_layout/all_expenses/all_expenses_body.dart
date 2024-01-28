import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/models/all_expenses_item_model.dart';
import 'package:reponsive_dash_board/utils/app_images.dart';
import 'package:reponsive_dash_board/widgets/main_layout/all_expenses/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  final List<ALlExpensesItemModel> expensesItems = [
    const ALlExpensesItemModel(
      name: 'Balance',
      icon: Assets.imagesMoney,
    ),
    const ALlExpensesItemModel(
      name: 'Income',
      icon: Assets.imagesCardReceive,
    ),
    const ALlExpensesItemModel(
      name: 'Expenses',
      icon: Assets.imagesCardSend,
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                activeIndex = 0;
              });
            },
            child: AllExpensesItem(model: expensesItems[0], isActive: activeIndex == 0,),
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                activeIndex = 1;
              });
            },
            child: AllExpensesItem(model: expensesItems[1], isActive: activeIndex == 1,),
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                activeIndex = 2;
              });
            },
            child: AllExpensesItem(model: expensesItems[2], isActive: activeIndex == 2,),
          ),
        ),
      ],
    );
  }
}
