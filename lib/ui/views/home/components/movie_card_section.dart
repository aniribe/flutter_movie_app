import 'dart:math';
import 'package:flutter/material.dart';
import '../../../../model/carousel_controller.dart';
import '../../../../model/movie.dart';
import '../../../util/ui_helpers.dart';
import 'movie_card.dart';

class MovieCardSection extends StatelessWidget {
  final List<Movie> movies;
  final CarouselController carouselController;
  final void Function(int) onPageChanged;
  final Function(int) onTap;

  const MovieCardSection({
    Key? key,
    required this.movies,
    required this.carouselController,
    required this.onPageChanged,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          controller: carouselController.pageController,
          itemCount: movies.length,
          onPageChanged: onPageChanged,
          itemBuilder: (context, index) => AnimatedBuilder(
            animation: carouselController.pageController,
            builder: (context, child) {
              double value = 0;
              if (carouselController.pageController.position.haveDimensions) {
                value =
                    index - (carouselController.pageController.page as double);
                value = (value * 0.038).clamp(-1, 1);
              }
              return AnimatedOpacity(
                duration: const Duration(milliseconds: 350),
                opacity: carouselController.initialPage == index ? 1 : 0.4,
                child: Transform.rotate(
                  angle: pi * value,
                  child: MovieCard(
                    poster: movies[index].poster as String,
                    rating: movies[index].rating.toString(),
                    movieName: movies[index].title as String,
                    onTap: onTap,
                    index: index,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
