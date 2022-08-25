import 'package:flutter/cupertino.dart';
import 'genre_button.dart';

class GenresSection extends StatelessWidget {
  final List<String> genres;

  const GenresSection({
    Key? key,
    required this.genres,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenreButton(genre: genres[index]),
      ),
    );
  }
}
