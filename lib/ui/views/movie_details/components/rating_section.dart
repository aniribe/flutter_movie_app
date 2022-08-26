import 'package:flutter/material.dart';
import 'package:movie_app/ui/views/movie_details/components/metascore.dart';
import 'package:movie_app/ui/views/movie_details/components/rate_for_movie.dart';
import '../../../../constants/app_colors.dart';
import '../../../../model/movie.dart';
import '../../../util/ui_helpers.dart';
import 'movie_rating.dart';

class RatingSection extends StatelessWidget {
  final Movie movie;

  const RatingSection({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: 100,
        width: screenWidth(context) * 0.9,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 50,
              color: AppColors.textColor.withOpacity(0.5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MovieRating(rating: movie.rating.toString()),
            const RateForMovie(),
            MetaScore(metascoreRating: movie.metaScoreRating.toString()),
          ],
        ),
      ),
    );
  }
}
