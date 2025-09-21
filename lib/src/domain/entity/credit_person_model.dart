class CreditPersonModel {
  final bool? adult;
  final List<dynamic>? alsoKnownAs;
  final String? biography;
  final DateTime? birthday;
  final DateTime? deathday;
  final int? gender;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final String? knownForDepartment;
  final String? name;
  final String? placeOfBirth;
  final double? popularity;
  final String? profilePath;

  CreditPersonModel({
    this.adult,
    this.alsoKnownAs,
    this.biography,
    this.birthday,
    this.deathday,
    this.gender,
    this.homepage,
    this.id,
    this.imdbId,
    this.knownForDepartment,
    this.name,
    this.placeOfBirth,
    this.popularity,
    this.profilePath,
  });

  CreditPersonModel copyWith({
    bool? adult,
    List<dynamic>? alsoKnownAs,
    String? biography,
    DateTime? birthday,
    DateTime? deathday,
    int? gender,
    String? homepage,
    int? id,
    String? imdbId,
    String? knownForDepartment,
    String? name,
    String? placeOfBirth,
    double? popularity,
    String? profilePath,
  }) => CreditPersonModel(
    adult: adult ?? this.adult,
    alsoKnownAs: alsoKnownAs ?? this.alsoKnownAs,
    biography: biography ?? this.biography,
    birthday: birthday ?? this.birthday,
    deathday: deathday ?? this.deathday,
    gender: gender ?? this.gender,
    homepage: homepage ?? this.homepage,
    id: id ?? this.id,
    imdbId: imdbId ?? this.imdbId,
    knownForDepartment: knownForDepartment ?? this.knownForDepartment,
    name: name ?? this.name,
    placeOfBirth: placeOfBirth ?? this.placeOfBirth,
    popularity: popularity ?? this.popularity,
    profilePath: profilePath ?? this.profilePath,
  );

  factory CreditPersonModel.fromJson(Map<String, dynamic> json) =>
      CreditPersonModel(
        adult: json['adult'] as bool?,
        alsoKnownAs: json['also_known_as'] as List<dynamic>?,
        biography: json['biography'] as String?,
        birthday: json['birthday'] != null
            ? DateTime.parse(json['birthday'])
            : null,
        deathday: json['deathday'] != null
            ? DateTime.parse(json['deathday'])
            : null,
        gender: json['gender'] as int?,
        homepage: json['homepage'] as String?,
        id: json['id'] as int?,
        imdbId: json['imdb_id'] as String?,
        knownForDepartment: json['known_for_department'] as String?,
        name: json['name'] as String?,
        placeOfBirth: json['place_of_birth'] as String?,
        popularity: (json['popularity'] != null)
            ? (json['popularity'] as num).toDouble()
            : null,
        profilePath: json['profile_path'] as String?,
      );

  Map<String, dynamic> toJson() => {
    'adult': adult,
    'also_known_as': alsoKnownAs,
    'biography': biography,
    'birthday': birthday,
    'deathday': deathday,
    'gender': gender,
    'homepage': homepage,
    'id': id,
    'imdb_id': imdbId,
    'known_for_department': knownForDepartment,
    'name': name,
    'place_of_birth': placeOfBirth,
    'popularity': popularity,
    'profile_path': profilePath,
  };
}
