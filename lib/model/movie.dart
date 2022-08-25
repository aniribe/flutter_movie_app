class Movie {
  final int? id;
  final int? year;
  final int? numOfRatings;
  final int? criticsReview;
  final int? metaScoreRating;
  final double? rating;
  final List<String>? genre;
  final String? plot;
  final String? title;
  final String? poster;
  final String? backdrop;
  final List<Map>? cast;

  Movie({
    this.poster,
    this.backdrop,
    this.title,
    this.id,
    this.year,
    this.numOfRatings,
    this.criticsReview,
    this.metaScoreRating,
    this.rating,
    this.genre,
    this.plot,
    this.cast,
  });
}
