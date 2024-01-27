import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/models/drawer_item_mode.dart';
import 'package:reponsive_dash_board/utils/app_images.dart';
import 'package:reponsive_dash_board/widgets/drawer_item_widget.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      title: 'My Transaction', 
      icon: Assets.imagesTransaction,
    ),
    DrawerItemModel(
      title: 'Statistics', 
      icon: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account', 
      icon: Assets.imagesWallet,
    ),
    DrawerItemModel(
      title: 'My Investments', 
      icon: Assets.imagesInvestment,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => DrawerListItemWidget(drawerItemModel: items[index]),
      itemCount: items.length,
    );
  }
}