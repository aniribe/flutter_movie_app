import 'package:flutter/material.dart';
import 'package:movie_app/constants/app_colors.dart';
import 'package:movie_app/data/data.dart';
import 'package:movie_app/ui/util/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../constants/app_images.dart';
import '../../../model/movie_categories_controller.dart';
import 'components/app_bar.dart';
import 'components/build_movie_category.dart';
import 'components/genre_button.dart';
import 'components/genres_section.dart';
import 'components/movie_card_section.dart';
import 'components/movie_categories_section.dart';
import 'home_viewmodel.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        body: Column(
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
              pageController: model.pageController as PageController,
            ),
          ],
        ),
      ),
    );
  }
}
