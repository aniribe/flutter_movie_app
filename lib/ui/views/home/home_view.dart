import 'package:flutter/material.dart';
import 'package:movie_app/constants/app_colors.dart';
import 'package:movie_app/data/data.dart';
import 'package:movie_app/ui/util/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../model/carousel_controller.dart';
import '../../../model/movie_categories_controller.dart';
import 'components/app_bar.dart';
import 'components/genres_section.dart';
import 'components/movie_card_section.dart';
import 'components/movie_categories_section.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.onInit(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: AppColors.white,
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(15),
              MovieCategorySection(
                categoryController:
                    model.movieCategoryController as MovieCategoryController,
                onTap: model.onCategoryButtonPressed,
              ),
              verticalSpace(25),
              GenresSection(
                genres: model.genres as List<String>,
              ),
              verticalSpace(15),
              MovieCardSection(
                movies: movies,
                carouselController:
                    model.carouselController as CarouselController,
                onPageChanged: (value) => model.onPageChanged(value),
                onTap: model.onMovieCardTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
