import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/card_layout/dots_indicator.dart';
import 'package:reponsive_dash_board/widgets/card_and_transaction_and_income_layout/card_layout/my_card_page_view.dart';

class CardLayout extends StatefulWidget {
  const CardLayout({super.key});

  @override
  State<CardLayout> createState() => _CardLayoutState();
}

class _CardLayoutState extends State<CardLayout> {
  late PageController pageController;
  int curentIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      curentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My card',
            style: AppStyles.styleSemiBold20,
          ),
          const SizedBox(
            height: 20.0,
          ),
          MyCardPageView(
            pageController: pageController,
          ),
          const SizedBox(
            height: 12.0,
          ),
          DotsIndictor(
            currentPageIndex: curentIndex,
          ),
        ],
      ),
    );
  }
}
