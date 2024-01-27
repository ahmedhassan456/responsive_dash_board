import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/models/drawer_item_mode.dart';
import 'package:reponsive_dash_board/utils/app_images.dart';
import 'package:reponsive_dash_board/widgets/custom_list_tile.dart';
import 'package:reponsive_dash_board/widgets/drawer_item_widget.dart';
import 'package:reponsive_dash_board/widgets/drawer_list_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 28.0,
                left: 24.0,
                right: 24.0,
              ),
              child: UserInfoListTile(
                image: Assets.imagesFrame,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 8.0,
          )),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                DrawerListItemWidget(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system', icon: Assets.imagesSettings),
                  isActive: false,
                ),
                DrawerListItemWidget(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', icon: Assets.imagesLogout),
                  isActive: false,
                ),
                SizedBox(
                  height: 48.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
