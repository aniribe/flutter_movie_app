import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../model/carousel_controller.dart';
import '../../../model/movie_categories_controller.dart';

class HomeViewModel extends BaseViewModel {
  MovieCategoryController? movieCategoryController;
  CarouselController? movieCarouselController;

  PageController? pageController;

  List<String>? genres;

  void onInit() {
    initializeMovieCategoriesController();
    initializeGenres();
    initializeMovieCarouselController();
  }

  @override
  void dispose() {
    movieCarouselController?.pageController.dispose();
    super.dispose();
  }

  void initializeMovieCategoriesController() {
    movieCategoryController = MovieCategoryController(categories: [
      'In Theater',
      'Box Office',
      'Coming Soon',
    ]);
  }

  void initializeGenres() {
    genres = [
      'Action',
      'Crime',
      'Comedy',
      'Drama',
      'Horror',
      'Animation',
    ];
  }

  void initializeMovieCarouselController() {
    // movieCarouselController = CarouselController(
    //     pageController: PageController(viewportFraction: 0.8, initialPage: 2));

    pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  void onCategoryButtonPressed(int index) {
    movieCategoryController?.selectedCategory = index;
    notifyListeners();
  }
}
