import 'dart:math';
import 'package:flutter/material.dart';
import '../../../../model/movie.dart';
import '../../../util/ui_helpers.dart';
import 'movie_card.dart';

class MovieCardSection extends StatelessWidget {
  final List<Movie> movies;
  final PageController pageController;

  const MovieCardSection({
    Key? key,
    required this.movies,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          controller: pageController,
          itemCount: movies.length,
          itemBuilder: (context, index) => AnimatedBuilder(
            animation: pageController,
            builder: (context, child) {
              double value = 0;
              if (pageController.position.haveDimensions) {
                value = index - (pageController.page as double);
                value = (value * 0.038).clamp(-1, 1);
              }
              return Transform.rotate(
                angle: pi * value,
                child: MovieCard(
                  poster: movies[index].poster as String,
                  rating: movies[index].rating.toString(),
                  movieName: movies[index].title as String,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
