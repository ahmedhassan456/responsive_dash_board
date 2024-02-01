import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reponsive_dash_board/utils/app_images.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: const Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 31.0, right: 42.0),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Name card',
                  style: AppStyles.styleRegular16.copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: const Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium20,
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style:
                        AppStyles.styleSemiBold24.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
