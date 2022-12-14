import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants/app_images.dart';
import '../../../util/ui_helpers.dart';

class MovieCardContent extends StatelessWidget {
  const MovieCardContent({
    Key? key,
    required this.poster,
    required this.movieName,
    required this.rating,
  }) : super(key: key);

  final String poster;
  final String movieName;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(poster),
              ),
              boxShadow: const [defaultShadow],
            ),
          ),
        ),
        verticalSpace(15),
        Text(
          movieName,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImages.starFillIcon,
              height: 20,
            ),
            horizontalSpace(10),
            Text(rating)
          ],
        ),
      ],
    );
  }
}
