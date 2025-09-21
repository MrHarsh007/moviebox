class CombineCreditFromPerson {
  final List<CombineCreditCast>? cast;
  final List<CombineCreditCast>? crew;
  final int? id;

  CombineCreditFromPerson({this.cast, this.crew, this.id});

  factory CombineCreditFromPerson.fromJson(Map<String, dynamic> json) =>
      CombineCreditFromPerson(
        cast: json['cast'] != null
            ? List<CombineCreditCast>.from(
                json['cast'].map((x) => CombineCreditCast.fromJson(x)),
              )
            : null,
        crew: json['crew'] != null
            ? List<CombineCreditCast>.from(
                json['crew'].map((x) => CombineCreditCast.fromJson(x)),
              )
            : null,
        id: json['id'],
      );

  CombineCreditFromPerson copyWith({
    List<CombineCreditCast>? cast,
    List<CombineCreditCast>? crew,
    int? id,
  }) => CombineCreditFromPerson(
    cast: cast ?? this.cast,
    crew: crew ?? this.crew,
    id: id ?? this.id,
  );
}

class CombineCreditCast {
  final bool? adult;
  final String? backdropPath;
  final List<int>? genreIds;
  final int? id;
  final OriginalLanguage? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;
  final String? character;
  final String? creditId;
  final int? order;
  final MediaType? mediaType;
  final List<String>? originCountry;
  final String? originalName;
  final DateTime? firstAirDate;
  final String? name;
  final int? episodeCount;
  final DateTime? firstCreditAirDate;

  CombineCreditCast({
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
    this.character,
    this.creditId,
    this.order,
    this.mediaType,
    this.originCountry,
    this.originalName,
    this.firstAirDate,
    this.name,
    this.episodeCount,
    this.firstCreditAirDate,
  });

  factory CombineCreditCast.fromJson(Map<String, dynamic> json) =>
      CombineCreditCast(
        adult: json['adult'],
        backdropPath: json['backdrop_path'],
        genreIds: json['genre_ids'] != null
            ? List<int>.from(json['genre_ids'])
            : null,
        id: json['id'],
        originalLanguage: json['original_language'] != null
            ? OriginalLanguage.values.firstWhere(
                (e) =>
                    e.name.toUpperCase() ==
                    json['original_language'].toString().toUpperCase(),
                orElse: () => OriginalLanguage.EN,
              )
            : null,
        originalTitle: json['original_title'],
        overview: json['overview'],
        popularity: (json['popularity'] is int)
            ? (json['popularity'] as int).toDouble()
            : json['popularity'],
        posterPath: json['poster_path'],
        releaseDate: json['release_date'],
        title: json['title'],
        video: json['video'],
        voteAverage: (json['vote_average'] is int)
            ? (json['vote_average'] as int).toDouble()
            : json['vote_average'],
        voteCount: json['vote_count'],
        character: json['character'],
        creditId: json['credit_id'],
        order: json['order'],
        mediaType: json['media_type'] != null
            ? MediaType.values.firstWhere(
                (e) =>
                    e.name.toUpperCase() ==
                    json['media_type'].toString().toUpperCase(),
                orElse: () => MediaType.MOVIE,
              )
            : null,
        originCountry: json['origin_country'] != null
            ? List<String>.from(json['origin_country'])
            : null,
        originalName: json['original_name'],
        firstAirDate: json['first_air_date'] != null
            ? DateTime.tryParse(json['first_air_date'])
            : null,
        name: json['name'],
        episodeCount: json['episode_count'],
        firstCreditAirDate: json['first_credit_air_date'] != null
            ? DateTime.tryParse(json['first_credit_air_date'])
            : null,
      );

  CombineCreditCast copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    OriginalLanguage? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
    String? character,
    String? creditId,
    int? order,
    MediaType? mediaType,
    List<String>? originCountry,
    String? originalName,
    DateTime? firstAirDate,
    String? name,
    int? episodeCount,
    DateTime? firstCreditAirDate,
  }) => CombineCreditCast(
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
    character: character ?? this.character,
    creditId: creditId ?? this.creditId,
    order: order ?? this.order,
    mediaType: mediaType ?? this.mediaType,
    originCountry: originCountry ?? this.originCountry,
    originalName: originalName ?? this.originalName,
    firstAirDate: firstAirDate ?? this.firstAirDate,
    name: name ?? this.name,
    episodeCount: episodeCount ?? this.episodeCount,
    firstCreditAirDate: firstCreditAirDate ?? this.firstCreditAirDate,
  );
}

enum MediaType { MOVIE, TV }

enum OriginalLanguage { EN }
