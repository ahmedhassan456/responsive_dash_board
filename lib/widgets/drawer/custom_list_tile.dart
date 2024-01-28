import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reponsive_dash_board/models/user_info_model.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.model, });

  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0.0,
      child: ListTile(
        leading: SvgPicture.asset(model.image),
        title: Text(
          model.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          model.subtitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}