import 'package:movie_app/service/movie_service.dart';
import 'package:stacked/stacked.dart';

import '../../../config/app.locator.dart';

class MovieDetailsViewModel extends BaseViewModel {
  final _movieService = locator<MovieService>();

  get movie => _movieService.chosenMovie;
}
