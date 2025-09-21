class MovieDetailsModel {
  final bool? adult;
  final String? backdropPath;
  final BelongsToCollection? belongsToCollection;
  final int? budget;
  final List<Genre>? genres;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final List<String>? originCountry;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<ProductionCompany>? productionCompanies;
  final List<ProductionCountry>? productionCountries;
  final DateTime? releaseDate;
  final int? revenue;
  final int? runtime;
  final List<SpokenLanguage>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  MovieDetailsModel({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originCountry,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        adult: json['adult'] as bool?,
        backdropPath: json['backdrop_path'] as String?,
        belongsToCollection: json['belongs_to_collection'] != null
            ? BelongsToCollection.fromJson(json['belongs_to_collection'])
            : null,
        budget: json['budget'] as int?,
        genres: (json['genres'] as List?)
            ?.map((e) => Genre.fromJson(e))
            .toList(),
        homepage: json['homepage'] as String?,
        id: json['id'] as int?,
        imdbId: json['imdb_id'] as String?,
        originCountry: (json['origin_country'] as List?)
            ?.map((e) => e as String)
            .toList(),
        originalLanguage: json['original_language'] as String?,
        originalTitle: json['original_title'] as String?,
        overview: json['overview'] as String?,
        popularity: (json['popularity'] as num?)?.toDouble(),
        posterPath: json['poster_path'] as String?,
        productionCompanies: (json['production_companies'] as List?)
            ?.map((e) => ProductionCompany.fromJson(e))
            .toList(),
        productionCountries: (json['production_countries'] as List?)
            ?.map((e) => ProductionCountry.fromJson(e))
            .toList(),
        releaseDate: json['release_date'] != null
            ? DateTime.tryParse(json['release_date'])
            : null,
        revenue: json['revenue'] as int?,
        runtime: json['runtime'] as int?,
        spokenLanguages: (json['spoken_languages'] as List?)
            ?.map((e) => SpokenLanguage.fromJson(e))
            .toList(),
        status: json['status'] as String?,
        tagline: json['tagline'] as String?,
        title: json['title'] as String?,
        video: json['video'] as bool?,
        voteAverage: (json['vote_average'] as num?)?.toDouble(),
        voteCount: json['vote_count'] as int?,
      );

  Map<String, dynamic> toJson() => {
    'adult': adult,
    'backdrop_path': backdropPath,
    'belongs_to_collection': belongsToCollection?.toJson(),
    'budget': budget,
    'genres': genres?.map((e) => e.toJson()).toList(),
    'homepage': homepage,
    'id': id,
    'imdb_id': imdbId,
    'origin_country': originCountry,
    'original_language': originalLanguage,
    'original_title': originalTitle,
    'overview': overview,
    'popularity': popularity,
    'poster_path': posterPath,
    'production_companies': productionCompanies
        ?.map((e) => e.toJson())
        .toList(),
    'production_countries': productionCountries
        ?.map((e) => e.toJson())
        .toList(),
    'release_date': releaseDate?.toIso8601String(),
    'revenue': revenue,
    'runtime': runtime,
    'spoken_languages': spokenLanguages?.map((e) => e.toJson()).toList(),
    'status': status,
    'tagline': tagline,
    'title': title,
    'video': video,
    'vote_average': voteAverage,
    'vote_count': voteCount,
  };

  MovieDetailsModel copyWith({
    bool? adult,
    String? backdropPath,
    BelongsToCollection? belongsToCollection,
    int? budget,
    List<Genre>? genres,
    String? homepage,
    int? id,
    String? imdbId,
    List<String>? originCountry,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    List<ProductionCompany>? productionCompanies,
    List<ProductionCountry>? productionCountries,
    DateTime? releaseDate,
    int? revenue,
    int? runtime,
    List<SpokenLanguage>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) => MovieDetailsModel(
    adult: adult ?? this.adult,
    backdropPath: backdropPath ?? this.backdropPath,
    belongsToCollection: belongsToCollection ?? this.belongsToCollection,
    budget: budget ?? this.budget,
    genres: genres ?? this.genres,
    homepage: homepage ?? this.homepage,
    id: id ?? this.id,
    imdbId: imdbId ?? this.imdbId,
    originCountry: originCountry ?? this.originCountry,
    originalLanguage: originalLanguage ?? this.originalLanguage,
    originalTitle: originalTitle ?? this.originalTitle,
    overview: overview ?? this.overview,
    popularity: popularity ?? this.popularity,
    posterPath: posterPath ?? this.posterPath,
    productionCompanies: productionCompanies ?? this.productionCompanies,
    productionCountries: productionCountries ?? this.productionCountries,
    releaseDate: releaseDate ?? this.releaseDate,
    revenue: revenue ?? this.revenue,
    runtime: runtime ?? this.runtime,
    spokenLanguages: spokenLanguages ?? this.spokenLanguages,
    status: status ?? this.status,
    tagline: tagline ?? this.tagline,
    title: title ?? this.title,
    video: video ?? this.video,
    voteAverage: voteAverage ?? this.voteAverage,
    voteCount: voteCount ?? this.voteCount,
  );
}

class BelongsToCollection {
  final int? id;
  final String? name;
  final dynamic posterPath;
  final String? backdropPath;

  BelongsToCollection({this.id, this.name, this.posterPath, this.backdropPath});

  factory BelongsToCollection.fromJson(Map<String, dynamic> json) =>
      BelongsToCollection(
        id: json['id'] as int?,
        name: json['name'] as String?,
        posterPath: json['poster_path'],
        backdropPath: json['backdrop_path'] as String?,
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'poster_path': posterPath,
    'backdrop_path': backdropPath,
  };

  BelongsToCollection copyWith({
    int? id,
    String? name,
    dynamic posterPath,
    String? backdropPath,
  }) => BelongsToCollection(
    id: id ?? this.id,
    name: name ?? this.name,
    posterPath: posterPath ?? this.posterPath,
    backdropPath: backdropPath ?? this.backdropPath,
  );
}

class Genre {
  final int? id;
  final String? name;

  Genre({this.id, this.name});

  factory Genre.fromJson(Map<String, dynamic> json) =>
      Genre(id: json['id'] as int?, name: json['name'] as String?);

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  Genre copyWith({int? id, String? name}) =>
      Genre(id: id ?? this.id, name: name ?? this.name);
}

class ProductionCompany {
  final int? id;
  final String? logoPath;
  final String? name;
  final String? originCountry;

  ProductionCompany({this.id, this.logoPath, this.name, this.originCountry});

  factory ProductionCompany.fromJson(Map<String, dynamic> json) =>
      ProductionCompany(
        id: json['id'] as int?,
        logoPath: json['logo_path'] as String?,
        name: json['name'] as String?,
        originCountry: json['origin_country'] as String?,
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'logo_path': logoPath,
    'name': name,
    'origin_country': originCountry,
  };

  ProductionCompany copyWith({
    int? id,
    String? logoPath,
    String? name,
    String? originCountry,
  }) => ProductionCompany(
    id: id ?? this.id,
    logoPath: logoPath ?? this.logoPath,
    name: name ?? this.name,
    originCountry: originCountry ?? this.originCountry,
  );
}

class ProductionCountry {
  final String? iso31661;
  final String? name;

  ProductionCountry({this.iso31661, this.name});

  factory ProductionCountry.fromJson(Map<String, dynamic> json) =>
      ProductionCountry(
        iso31661: json['iso_3166_1'] as String?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {'iso_3166_1': iso31661, 'name': name};

  ProductionCountry copyWith({String? iso31661, String? name}) =>
      ProductionCountry(
        iso31661: iso31661 ?? this.iso31661,
        name: name ?? this.name,
      );
}

class SpokenLanguage {
  final String? englishName;
  final String? iso6391;
  final String? name;

  SpokenLanguage({this.englishName, this.iso6391, this.name});

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) => SpokenLanguage(
    englishName: json['english_name'] as String?,
    iso6391: json['iso_639_1'] as String?,
    name: json['name'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'english_name': englishName,
    'iso_639_1': iso6391,
    'name': name,
  };

  SpokenLanguage copyWith({
    String? englishName,
    String? iso6391,
    String? name,
  }) => SpokenLanguage(
    englishName: englishName ?? this.englishName,
    iso6391: iso6391 ?? this.iso6391,
    name: name ?? this.name,
  );
}
