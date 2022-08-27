import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';
import '../../../util/ui_helpers.dart';

class CastItem extends StatelessWidget {
  final String image;
  final String name;
  final String movieName;

  const CastItem({
    Key? key,
    required this.image,
    required this.name,
    required this.movieName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: defaultPadding),
      width: 80,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 35,
          ),
          verticalSpace(15),
          Text(
            name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          verticalSpace(7),
          Text(
            movieName,
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.textLightColor),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
