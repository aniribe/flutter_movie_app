import 'package:flutter/material.dart';
import 'package:movie_app/ui/views/movie_details/components/rating_section.dart';
import '../../../../model/movie.dart';
import '../../../util/ui_helpers.dart';
import 'image_container.dart';

class ImageSection extends StatelessWidget {
  final Movie movie;

  const ImageSection({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.4,
      child: Stack(
        children: [
          ImageContainer(image: movie.backdrop as String),
          RatingSection(movie: movie),
          const SafeArea(child: BackButton()),
        ],
      ),
    );
  }
}
