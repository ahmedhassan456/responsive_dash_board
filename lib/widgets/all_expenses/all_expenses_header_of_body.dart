import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reponsive_dash_board/models/all_expenses_item_model.dart';

class AllExpensesHeaderOfBody extends StatelessWidget {
  const AllExpensesHeaderOfBody({
    super.key,
    required this.model, required this.isActive,
  });

  final ALlExpensesItemModel model;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: isActive? Colors.white.withOpacity(0.10000000149011612) : const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              model.icon,
              colorFilter:isActive? const ColorFilter.mode(Colors.white, BlendMode.srcIn) : const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: isActive? Colors.white: const Color(0xFF064061),
        ),
      ],
    );
  }
}