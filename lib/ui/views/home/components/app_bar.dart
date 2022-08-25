import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_images.dart';
import '../../../util/ui_helpers.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: AppColors.white,
    elevation: 0,
    leading: IconButton(
      padding: const EdgeInsets.only(left: defaultPadding),
      icon: SvgPicture.asset(AppImages.menuIcon),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        icon: SvgPicture.asset(AppImages.searchIcon),
        onPressed: () {},
      ),
    ],
  );
}
