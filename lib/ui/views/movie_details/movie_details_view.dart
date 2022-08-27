import 'package:flutter/material.dart';
import 'package:movie_app/ui/util/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../model/movie.dart';
import 'components/cast_section.dart';
import 'components/genre_section.dart';
import 'components/image_section.dart';
import 'components/plot_section.dart';
import 'components/title_section.dart';
import 'movie_details_viewmodel.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MovieDetailsViewModel>.reactive(
      viewModelBuilder: () => MovieDetailsViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSection(movie: model.movie as Movie),
              verticalSpace(15),
              TitleSection(
                title: model.movie?.title as String,
                year: model.movie?.year.toString() as String,
              ),
              verticalSpace(15),
              GenreSection(movie: model.movie as Movie),
              verticalSpace(45),
              PlotSection(plotText: model.movie?.plot as String),
              verticalSpace(45),
              CastSection(movieCast: model.movie?.cast as List<Map>),
            ],
          ),
        ),
      ),
    );
  }
}
