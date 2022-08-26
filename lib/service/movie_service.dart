import '../data/data.dart';
import '../model/movie.dart';

class MovieService {
  Movie? chosenMovie;

  void setChosenMovie(int index) {
    chosenMovie = movies[index];
  }
}
