import 'package:movie_app/service/movie_service.dart';
import 'package:stacked/stacked.dart';
import '../../../config/app.locator.dart';
import '../../../model/movie.dart';

class MovieDetailsViewModel extends BaseViewModel {
  final _movieService = locator<MovieService>();

  Movie? get movie => _movieService.chosenMovie;
}
