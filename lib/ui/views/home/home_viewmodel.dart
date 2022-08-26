import 'package:flutter/material.dart';
import 'package:movie_app/config/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../config/app.locator.dart';
import '../../../model/carousel_controller.dart';
import '../../../model/movie_categories_controller.dart';
import '../../../service/movie_service.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _movieService = locator<MovieService>();

  MovieCategoryController? movieCategoryController;

  CarouselController? carouselController;

  PageController? pageController;

  List<String>? genres;

  void onInit() {
    initializeMovieCategoriesController();
    initializeGenres();
    initializeMovieCarouselController();
  }

  @override
  void dispose() {
    pageController?.dispose();
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
    carouselController = CarouselController(
        pageController: PageController(viewportFraction: 0.8, initialPage: 1));
  }

  void onCategoryButtonPressed(int index) {
    movieCategoryController?.selectedCategory = index;
    notifyListeners();
  }

  void onPageChanged(int newValue) {
    carouselController?.initialPage = newValue;
    notifyListeners();
  }

  Future<void> onMovieCardTap(int index) async {
    print('HERE');
    setChosenMovie(index);
    await redirectToMovieDetails();
  }

  void setChosenMovie(int index) => _movieService.setChosenMovie(index);

  Future<void> redirectToMovieDetails() async =>
      await _navigationService.navigateTo(Routes.movieDetailsView);
}
