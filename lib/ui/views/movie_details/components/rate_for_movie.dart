import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants/app_images.dart';
import '../../../util/ui_helpers.dart';

class RateForMovie extends StatelessWidget {
  const RateForMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.starIcon),
        verticalSpace(10),
        Text(
          'Rate this',
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }
}
