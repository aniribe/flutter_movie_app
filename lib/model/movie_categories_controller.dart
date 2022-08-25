class MovieCategoryController {
  final List<String> categories;
  int selectedCategory;

  MovieCategoryController(
      {required this.categories, this.selectedCategory = 0});
}
