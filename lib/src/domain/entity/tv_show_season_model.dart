class TvShowSeasonDetailsModel {
  final int? id;
  final DateTime? airDate;
  final List<Episode>? episodes;
  final String? name;
  final String? overview;
  final int? tvShowSeasonDetailsModelId;
  final String? posterPath;
  final int? seasonNumber;
  final double? voteAverage;

  TvShowSeasonDetailsModel({
    this.id,
    this.airDate,
    this.episodes,
    this.name,
    this.overview,
    this.tvShowSeasonDetailsModelId,
    this.posterPath,
    this.seasonNumber,
    this.voteAverage,
  });

  factory TvShowSeasonDetailsModel.fromJson(Map<String, dynamic> json) {
    return TvShowSeasonDetailsModel(
      id: json['id'] as int?,
      airDate: json['air_date'] != null
          ? DateTime.tryParse(json['air_date'])
          : null,
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      tvShowSeasonDetailsModelId: json['tvShowSeasonDetailsModelId'] as int?,
      posterPath: json['poster_path'] as String?,
      seasonNumber: json['season_number'] as int?,
      voteAverage: json['vote_average'] as double?,
    );
  }
}

class Episode {
  final DateTime? airDate;
  final int? episodeNumber;
  final EpisodeType? episodeType;
  final int? id;
  final String? name;
  final String? overview;
  final String? productionCode;
  final int? runtime;
  final int? seasonNumber;
  final int? showId;
  final dynamic stillPath;
  final double? voteAverage;
  final int? voteCount;
  final List<Crew>? crew;
  final List<Crew>? guestStars;

  Episode({
    this.airDate,
    this.episodeNumber,
    this.episodeType,
    this.id,
    this.name,
    this.overview,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.showId,
    this.stillPath,
    this.voteAverage,
    this.voteCount,
    this.crew,
    this.guestStars,
  });

  factory Episode.fromJson(Map<String, dynamic> json) {
    return Episode(
      airDate: json['air_date'] != null
          ? DateTime.tryParse(json['air_date'])
          : null,
      episodeNumber: json['episode_number'] as int?,
      episodeType: json['episode_type'] != null
          ? EpisodeType.values.firstWhere(
              (e) =>
                  e.name.toLowerCase() ==
                  json['episode_type'].toString().toLowerCase(),
              orElse: () => EpisodeType.STANDARD,
            )
          : null,
      id: json['id'] as int?,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      productionCode: json['production_code'] as String?,
      runtime: json['runtime'] as int?,
      seasonNumber: json['season_number'] as int?,
      showId: json['show_id'] as int?,
      stillPath: json['still_path'],
      voteAverage: json['vote_average'] as double?,
      voteCount: json['vote_count'] as int?,
      crew: (json['crew'] as List<dynamic>?)
          ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
          .toList(),
      guestStars: (json['guest_stars'] as List<dynamic>?)
          ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class Crew {
  final String? job;
  final String? department;
  final String? creditId;
  final bool? adult;
  final int? gender;
  final int? id;
  final KnownForDepartment? knownForDepartment;
  final String? name;
  final String? originalName;
  final double? popularity;
  final String? profilePath;
  final Character? character;
  final int? order;

  Crew({
    this.job,
    this.department,
    this.creditId,
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.character,
    this.order,
  });

  factory Crew.fromJson(Map<String, dynamic> json) {
    return Crew(
      job: json['job'] as String?,
      department: json['department'] as String?,
      creditId: json['credit_id'] as String?,
      adult: json['adult'] as bool?,
      gender: json['gender'] as int?,
      id: json['id'] as int?,
      knownForDepartment: json['known_for_department'] != null
          ? KnownForDepartment.values.firstWhere(
              (e) =>
                  e.name.toLowerCase() ==
                  json['known_for_department'].toString().toLowerCase(),
              orElse: () => KnownForDepartment.ACTING,
            )
          : null,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      popularity: (json['popularity'] as double?)?.toDouble(),
      profilePath: json['profile_path'] as String?,
      character: json['character'] != null
          ? Character.values.firstWhere(
              (e) =>
                  e.name.toLowerCase() ==
                  json['character'].toString().toLowerCase().replaceAll(
                    ' ',
                    '_',
                  ),
              orElse: () => Character.SELF,
            )
          : null,
      order: json['order'] as int?,
    );
  }
}

enum Character {
  SELF,
  SELF_ARCHIVE_FOOTAGE,
  SELF_GUEST,
  SELF_MUSICAL_GUEST,
  SELF_MUSICAL_GUEST_THE_XX,
  SELF_PERFORMER,
}

enum KnownForDepartment { ACTING, DIRECTING, PRODUCTION, SOUND }

enum EpisodeType { FINALE, STANDARD }
