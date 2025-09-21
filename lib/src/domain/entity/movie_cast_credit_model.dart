class MovieCastCreditModel {
  final int? id;
  final List<CastModel>? cast;
  final List<CastModel>? crew;

  MovieCastCreditModel({this.id, this.cast, this.crew});

  factory MovieCastCreditModel.fromJson(Map<String, dynamic> json) {
    return MovieCastCreditModel(
      id: json['id'] as int?,
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => CastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      crew: (json['crew'] as List<dynamic>?)
          ?.map((e) => CastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'cast': cast?.map((e) => e.toJson()).toList(),
    'crew': crew?.map((e) => e.toJson()).toList(),
  };

  MovieCastCreditModel copyWith({
    int? id,
    List<CastModel>? cast,
    List<CastModel>? crew,
  }) => MovieCastCreditModel(
    id: id ?? this.id,
    cast: cast ?? this.cast,
    crew: crew ?? this.crew,
  );
}

class CastModel {
  final bool? adult;
  final int? gender;
  final int? id;
  final KnownForDepartment? knownForDepartment;
  final String? name;
  final String? originalName;
  final double? popularity;
  final String? profilePath;
  final int? castId;
  final String? character;
  final String? creditId;
  final int? order;

  CastModel({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
  });

  factory CastModel.fromJson(Map<String, dynamic> json) {
    return CastModel(
      adult: json['adult'] as bool?,
      gender: json['gender'] as int?,
      id: json['id'] as int?,
      knownForDepartment: json['known_for_department'] != null
          ? KnownForDepartment.values.firstWhere(
              (e) =>
                  e.name.toUpperCase() ==
                  (json['known_for_department'] as String).toUpperCase(),
              orElse: () => KnownForDepartment.ACTING,
            )
          : null,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      profilePath: json['profile_path'] as String?,
      castId: json['cast_id'] as int?,
      character: json['character'] as String?,
      creditId: json['credit_id'] as String?,
      order: json['order'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
    'adult': adult,
    'gender': gender,
    'id': id,
    'known_for_department': knownForDepartment?.name,
    'name': name,
    'original_name': originalName,
    'popularity': popularity,
    'profile_path': profilePath,
    'cast_id': castId,
    'character': character,
    'credit_id': creditId,
    'order': order,
  };

  CastModel copyWith({
    bool? adult,
    int? gender,
    int? id,
    KnownForDepartment? knownForDepartment,
    String? name,
    String? originalName,
    double? popularity,
    String? profilePath,
    int? castId,
    String? character,
    String? creditId,
    int? order,
    dynamic p,
  }) => CastModel(
    adult: adult ?? this.adult,
    gender: gender ?? this.gender,
    id: id ?? this.id,
    knownForDepartment: knownForDepartment ?? this.knownForDepartment,
    name: name ?? this.name,
    originalName: originalName ?? this.originalName,
    popularity: popularity ?? this.popularity,
    profilePath: profilePath ?? this.profilePath,
    castId: castId ?? this.castId,
    character: character ?? this.character,
    creditId: creditId ?? this.creditId,
    order: order ?? this.order,
  );
}

enum KnownForDepartment { ACTING, CREW }
