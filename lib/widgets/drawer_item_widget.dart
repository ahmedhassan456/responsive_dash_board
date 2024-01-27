import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reponsive_dash_board/models/drawer_item_mode.dart';

class DrawerListItemWidget extends StatelessWidget {
  const DrawerListItemWidget({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListTile(
        title: Text(drawerItemModel.title),
        leading: SvgPicture.asset(drawerItemModel.icon),
      ),
    );
  }
}
