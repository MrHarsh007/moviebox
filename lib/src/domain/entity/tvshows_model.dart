/// Model representing a paginated list of TV shows.
class TvShowModel {
  final int? page;
  final List<TvShowsResult>? results;
  final int? totalPages;
  final int? totalResults;

  TvShowModel({this.page, this.results, this.totalPages, this.totalResults});

  /// Creates a copy of this model with optional new values.
  TvShowModel copyWith({
    int? page,
    List<TvShowsResult>? results,
    int? totalPages,
    int? totalResults,
  }) => TvShowModel(
    page: page ?? this.page,
    results: results ?? this.results,
    totalPages: totalPages ?? this.totalPages,
    totalResults: totalResults ?? this.totalResults,
  );

  /// Converts this model to a JSON map.
  Map<String, dynamic> toJson() => {
    'page': page,
    'results': results?.map((e) => e.toJson()).toList(),
    'total_pages': totalPages,
    'total_results': totalResults,
  };

  /// Creates a model from a JSON map.
  factory TvShowModel.fromJson(Map<String, dynamic> json) => TvShowModel(
    page: json['page'] as int?,
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => TvShowsResult.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalPages: json['total_pages'] as int?,
    totalResults: json['total_results'] as int?,
  );

  @override
  String toString() {
    return 'TvShowModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }
}

/// Model representing a single TV show result.
class TvShowsResult {
  final bool? adult;
  final String? backdropPath;
  final int? id;
  final String? name;
  final String? originalName;
  final String? overview;
  final String? posterPath;
  final MediaType? mediaType;
  final OriginalLanguage? originalLanguage;
  final List<int>? genreIds;
  final double? popularity;
  final DateTime? firstAirDate;
  final double? voteAverage;
  final int? voteCount;
  final List<OriginCountry>? originCountry;

  TvShowsResult({
    this.adult,
    this.backdropPath,
    this.id,
    this.name,
    this.originalName,
    this.overview,
    this.posterPath,
    this.mediaType,
    this.originalLanguage,
    this.genreIds,
    this.popularity,
    this.firstAirDate,
    this.voteAverage,
    this.voteCount,
    this.originCountry,
  });

  /// Creates a copy of this result with optional new values.
  TvShowsResult copyWith({
    bool? adult,
    String? backdropPath,
    int? id,
    String? name,
    String? originalName,
    String? overview,
    String? posterPath,
    MediaType? mediaType,
    OriginalLanguage? originalLanguage,
    List<int>? genreIds,
    double? popularity,
    DateTime? firstAirDate,
    double? voteAverage,
    int? voteCount,
    List<OriginCountry>? originCountry,
  }) => TvShowsResult(
    adult: adult ?? this.adult,
    backdropPath: backdropPath ?? this.backdropPath,
    id: id ?? this.id,
    name: name ?? this.name,
    originalName: originalName ?? this.originalName,
    overview: overview ?? this.overview,
    posterPath: posterPath ?? this.posterPath,
    mediaType: mediaType ?? this.mediaType,
    originalLanguage: originalLanguage ?? this.originalLanguage,
    genreIds: genreIds ?? this.genreIds,
    popularity: popularity ?? this.popularity,
    firstAirDate: firstAirDate ?? this.firstAirDate,
    voteAverage: voteAverage ?? this.voteAverage,
    voteCount: voteCount ?? this.voteCount,
    originCountry: originCountry ?? this.originCountry,
  );

  /// Converts this result to a JSON map.
  Map<String, dynamic> toJson() => {
    'adult': adult,
    'backdrop_path': backdropPath,
    'id': id,
    'name': name,
    'original_name': originalName,
    'overview': overview,
    'poster_path': posterPath,
    'media_type': mediaType?.name,
    'original_language': originalLanguage?.name,
    'genre_ids': genreIds,
    'popularity': popularity,
    'first_air_date': firstAirDate?.toIso8601String(),
    'vote_average': voteAverage,
    'vote_count': voteCount,
    'origin_country': originCountry?.map((e) => e.name).toList(),
  };

  /// Creates a result from a JSON map.
  factory TvShowsResult.fromJson(Map<String, dynamic> json) => TvShowsResult(
    adult: json['adult'] as bool?,
    backdropPath: json['backdrop_path'] as String?,
    id: json['id'] as int?,
    name: json['name'] as String?,
    originalName: json['original_name'] as String?,
    overview: json['overview'] as String?,
    posterPath: json['poster_path'] as String?,
    mediaType: json['media_type'] != null
        ? MediaType.values.firstWhere(
            (e) =>
                e.name.toLowerCase() ==
                json['media_type'].toString().toLowerCase(),
            orElse: () => MediaType.TV,
          )
        : null,

    originalLanguage: json['original_language'] != null
        ? OriginalLanguage.values.firstWhere(
            (e) => e.name == json['original_language'],
            orElse: () => OriginalLanguage.EN,
          )
        : null,
    genreIds: (json['genre_ids'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList(),
    popularity: (json['popularity'] as num?)?.toDouble(),
    firstAirDate: json['first_air_date'] != null
        ? DateTime.tryParse(json['first_air_date'])
        : null,
    voteAverage: (json['vote_average'] as num?)?.toDouble(),
    voteCount: json['vote_count'] as int?,
    originCountry: (json['origin_country'] as List<dynamic>?)
        ?.map(
          (e) => OriginCountry.values.firstWhere(
            (oc) => oc.name == e,
            orElse: () => OriginCountry.US,
          ),
        )
        .toList(),
  );

  @override
  String toString() {
    return 'TvShowsResult(adult: $adult, backdropPath: $backdropPath, id: $id, name: $name, originalName: $originalName, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, firstAirDate: $firstAirDate, voteAverage: $voteAverage, voteCount: $voteCount, originCountry: $originCountry)';
  }
}

/// Enum for media type.
enum MediaType { MOVIE, TV }

/// Enum for origin country.
enum OriginCountry { CN, JP, KR, US }

/// Enum for original language.
enum OriginalLanguage { EN, JA, KO, ZH }
