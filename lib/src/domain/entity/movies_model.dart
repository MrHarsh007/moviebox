class MovieModel {
  final int? page;
  final List<MovieResult>? results;
  final int? totalPages;
  final int? totalResults;

  MovieModel({this.page, this.results, this.totalPages, this.totalResults});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
    page: json['page'] as int?,
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => MovieResult.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalPages: json['total_pages'] as int?,
    totalResults: json['total_results'] as int?,
  );

  MovieModel copyWith({
    int? page,
    List<MovieResult>? results,
    int? totalPages,
    int? totalResults,
  }) => MovieModel(
    page: page ?? this.page,
    results: results ?? this.results,
    totalPages: totalPages ?? this.totalPages,
    totalResults: totalResults ?? this.totalResults,
  );
}

class MovieResult {
  final bool? adult;
  final String? backdropPath;
  final List<int>? genreIds;
  final int? id;
  final OriginalLanguage? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final DateTime? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  MovieResult({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieResult.fromJson(Map<String, dynamic> json) => MovieResult(
    adult: json['adult'] as bool?,
    backdropPath: json['backdrop_path'] as String?,
    genreIds: (json['genre_ids'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList(),
    id: json['id'] as int?,
    originalLanguage: _originalLanguageFromString(
      json['original_language'] as String?,
    ),
    originalTitle: json['original_title'] as String?,
    overview: json['overview'] as String?,
    popularity: (json['popularity'] as num?)?.toDouble(),
    posterPath: json['poster_path'] as String?,
    releaseDate:
        json['release_date'] != null &&
            (json['release_date'] as String).isNotEmpty
        ? DateTime.tryParse(json['release_date'] as String)
        : null,
    title: json['title'] as String?,
    video: json['video'] as bool?,
    voteAverage: (json['vote_average'] as num?)?.toDouble(),
    voteCount: json['vote_count'] as int?,
  );

  MovieResult copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    OriginalLanguage? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) => MovieResult(
    adult: adult ?? this.adult,
    backdropPath: backdropPath ?? this.backdropPath,
    genreIds: genreIds ?? this.genreIds,
    id: id ?? this.id,
    originalLanguage: originalLanguage ?? this.originalLanguage,
    originalTitle: originalTitle ?? this.originalTitle,
    overview: overview ?? this.overview,
    popularity: popularity ?? this.popularity,
    posterPath: posterPath ?? this.posterPath,
    releaseDate: releaseDate ?? this.releaseDate,
    title: title ?? this.title,
    video: video ?? this.video,
    voteAverage: voteAverage ?? this.voteAverage,
    voteCount: voteCount ?? this.voteCount,
  );
}

enum OriginalLanguage { EN, JA, NL, TH }

OriginalLanguage? _originalLanguageFromString(String? value) {
  switch (value) {
    case 'en':
      return OriginalLanguage.EN;
    case 'ja':
      return OriginalLanguage.JA;
    case 'nl':
      return OriginalLanguage.NL;
    case 'th':
      return OriginalLanguage.TH;
    default:
      return null;
  }
}
