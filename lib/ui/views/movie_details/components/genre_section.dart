import 'package:flutter/cupertino.dart';
import '../../../../model/movie.dart';
import '../../home/components/genre_button.dart';

class GenreSection extends StatelessWidget {
  final Movie movie;

  const GenreSection({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genre?.length,
          itemBuilder: (context, index) => GenreButton(
                genre: movie.genre?[index] as String,
              )),
    );
  }
}
