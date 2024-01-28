import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/models/user_info_model.dart';
import 'package:reponsive_dash_board/utils/app_images.dart';
import 'package:reponsive_dash_board/widgets/drawer/custom_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Assets.imagesFrame, 
      title: 'Madrani Andi', 
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesFrame2, 
      title: 'Josua Nunito', 
      subtitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesFrame, 
      title: 'Madrani Andi', 
      subtitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return IntrinsicWidth(
            child: UserInfoListTile(model: e,),
          );
        }).toList(),
      ),
    );
  }
}