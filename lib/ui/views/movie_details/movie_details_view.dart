import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/constants/app_colors.dart';
import 'package:movie_app/constants/app_images.dart';
import 'package:movie_app/ui/util/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'components/image_section.dart';
import 'components/title_section.dart';
import 'movie_details_viewmodel.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MovieDetailsViewModel>.reactive(
      viewModelBuilder: () => MovieDetailsViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Column(
          children: [
            ImageSection(movie: model.movie),
            TitleSection(
              title: model.movie.title,
              year: model.movie.year.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
