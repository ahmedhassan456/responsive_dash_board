import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/models/drawer_item_mode.dart';
import 'package:reponsive_dash_board/utils/app_images.dart';
import 'package:reponsive_dash_board/widgets/drawer_item_widget.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});
  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(
      title: 'My Transaction',
      icon: Assets.imagesTransaction,
    ),
    const DrawerItemModel(
      title: 'Statistics',
      icon: Assets.imagesStatistics,
    ),
    const DrawerItemModel(
      title: 'Wallet Account',
      icon: Assets.imagesWallet,
    ),
    const DrawerItemModel(
      title: 'My Investments',
      icon: Assets.imagesInvestment,
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: DrawerListItemWidget(
          drawerItemModel: items[index],
          isActive: activeIndex == index,
        ),
      ),
      itemCount: items.length,
    );
  }
}
