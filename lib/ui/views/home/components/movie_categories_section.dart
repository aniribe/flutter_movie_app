import 'package:flutter/cupertino.dart';
import '../../../../model/movie_categories_controller.dart';
import 'build_movie_category.dart';

class MovieCategorySection extends StatelessWidget {
  final MovieCategoryController categoryController;
  final void Function(int) onTap;

  const MovieCategorySection({
    Key? key,
    required this.categoryController,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryController.categories.length,
        itemBuilder: (context, index) => buildMovieCategory(
          categoryController,
          index,
          context,
          onTap,
        ),
      ),
    );
  }
}
