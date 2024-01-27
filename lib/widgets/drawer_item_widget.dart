import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reponsive_dash_board/models/drawer_item_mode.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';

class DrawerListItemWidget extends StatelessWidget {
  const DrawerListItemWidget(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        right: 24.0,
        left: 24.0,
      ),
      child: ListTile(
        title: Text(
          drawerItemModel.title,
          style: isActive
              ? AppStyles.styleBold16.copyWith(color: const Color(0xFF4EB7F2))
              : AppStyles.styleMedium16
                  .copyWith(color: const Color(0xFF064060)),
        ),
        leading: SvgPicture.asset(
          drawerItemModel.icon,
          colorFilter: isActive ? const ColorFilter.mode(Color(0xFF4EB7F2), BlendMode.srcIn)
              : const ColorFilter.mode(Color(0xFF064060), BlendMode.srcIn),
        ),
        trailing: isActive ? Container(
                width: 3.27,
                decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
              )
            : null,
      ),
    );
  }
}
