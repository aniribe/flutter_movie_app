import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_images.dart';
import '../../../util/ui_helpers.dart';

class MovieRating extends StatelessWidget {
  final String rating;

  const MovieRating({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.starFillIcon),
        verticalSpace(10),
        RichText(
          text: TextSpan(
            style: const TextStyle(color: AppColors.textColor),
            children: [
              TextSpan(
                text: rating,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextSpan(text: '/10\n'),
              const TextSpan(
                text: '150,212',
                style: TextStyle(
                  color: AppColors.textLightColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
