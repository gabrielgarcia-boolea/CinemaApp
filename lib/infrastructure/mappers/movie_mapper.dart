import 'package:cinema_app/domain/entities/movie.dart';
import 'package:cinema_app/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinema_app/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB movieDb) => Movie(
    adult: movieDb.adult,
    backdropPath: (movieDb.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500${movieDb.backdropPath}'
        : 'https://cdn.displate.com/artwork/857x1200/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
    genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
    id: movieDb.id,
    originalLanguage: movieDb.originalLanguage,
    originalTitle: movieDb.originalTitle,
    overview: movieDb.overview,
    popularity: movieDb.popularity,
    posterPath: (movieDb.posterPath != '')
        ? 'https://image.tmdb.org/t/p/w500${movieDb.posterPath}'
        : 'https://m.media-amazon.com/images/I/61s8vyZLSzL._AC_UF894,1000_QL80_.jpg',
    releaseDate: movieDb.releaseDate != null
        ? movieDb.releaseDate!
        : DateTime.now(),
    title: movieDb.title,
    video: movieDb.video,
    voteAverage: movieDb.voteAverage,
    voteCount: movieDb.voteCount,
  );

  static Movie movieDetailsToEntity(MovieDetails movie) => Movie(
    adult: movie.adult,
    backdropPath: (movie.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500${movie.backdropPath}'
        : 'https://cdn.displate.com/artwork/857x1200/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
    genreIds: movie.genres.map((e) => e.name).toList(),
    id: movie.id,
    originalLanguage: movie.originalLanguage,
    originalTitle: movie.originalTitle,
    overview: movie.overview,
    popularity: movie.popularity,
    posterPath: (movie.posterPath != '')
        ? 'https://image.tmdb.org/t/p/w500${movie.posterPath}'
        : 'https://cdn.displate.com/artwork/857x1200/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
    releaseDate: movie.releaseDate,
    title: movie.title,
    video: movie.video,
    voteAverage: movie.voteAverage,
    voteCount: movie.voteCount,
  );
}
