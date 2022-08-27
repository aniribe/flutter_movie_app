import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/ui/views/movie_details/movie_details_view.dart';
import '../../../util/ui_helpers.dart';
import 'movie_card_content.dart';

class MovieCard extends StatelessWidget {
  final String poster;
  final String movieName;
  final String rating;
  final int index;
  final Function(int) onTap;

  const MovieCard({
    Key? key,
    required this.poster,
    required this.movieName,
    required this.rating,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: OpenContainer(
          transitionType: ContainerTransitionType.fadeThrough,
          tappable: false,
          closedBuilder: (BuildContext context, VoidCallback openContainer) {
            return InkWell(
              onTap: () {
                onTap(index);
                openContainer();
              },
              child: MovieCardContent(
                  poster: poster, movieName: movieName, rating: rating),
            );
          },
          openBuilder: (context, action) => const MovieDetailsView(),
        ));
  }
}
