class VideosModel {
  final int? id;
  final List<VideoResult>? results;

  VideosModel({this.id, this.results});

  VideosModel copyWith({int? id, List<VideoResult>? results}) =>
      VideosModel(id: id ?? this.id, results: results ?? this.results);

  factory VideosModel.fromJson(Map<String, dynamic> json) => VideosModel(
    id: json['id'] as int?,
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => VideoResult.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'results': results?.map((e) => e.toJson()).toList(),
  };
}

class VideoResult {
  final Iso6391? iso6391;
  final Iso31661? iso31661;
  final String? name;
  final String? key;
  final Site? site;
  final int? size;
  final String? type;
  final bool? official;
  final DateTime? publishedAt;
  final String? id;

  VideoResult({
    this.iso6391,
    this.iso31661,
    this.name,
    this.key,
    this.site,
    this.size,
    this.type,
    this.official,
    this.publishedAt,
    this.id,
  });

  VideoResult copyWith({
    Iso6391? iso6391,
    Iso31661? iso31661,
    String? name,
    String? key,
    Site? site,
    int? size,
    String? type,
    bool? official,
    DateTime? publishedAt,
    String? id,
  }) => VideoResult(
    iso6391: iso6391 ?? this.iso6391,
    iso31661: iso31661 ?? this.iso31661,
    name: name ?? this.name,
    key: key ?? this.key,
    site: site ?? this.site,
    size: size ?? this.size,
    type: type ?? this.type,
    official: official ?? this.official,
    publishedAt: publishedAt ?? this.publishedAt,
    id: id ?? this.id,
  );

  factory VideoResult.fromJson(Map<String, dynamic> json) => VideoResult(
    iso6391: json['iso_639_1'] != null
        ? Iso6391.values.firstWhere(
            (e) =>
                e.name.toUpperCase() ==
                (json['iso_639_1'] as String).toUpperCase(),
            orElse: () => Iso6391.EN,
          )
        : null,
    iso31661: json['iso_3166_1'] != null
        ? Iso31661.values.firstWhere(
            (e) =>
                e.name.toUpperCase() ==
                (json['iso_3166_1'] as String).toUpperCase(),
            orElse: () => Iso31661.US,
          )
        : null,
    name: json['name'] as String?,
    key: json['key'] as String?,
    site: json['site'] != null
        ? Site.values.firstWhere(
            (e) =>
                e.name.replaceAll('_', '').toUpperCase() ==
                (json['site'] as String).replaceAll(' ', '').toUpperCase(),
            orElse: () => Site.YOU_TUBE,
          )
        : null,
    size: json['size'] as int?,
    type: json['type'] as String?,
    official: json['official'] as bool?,
    publishedAt: json['published_at'] != null
        ? DateTime.tryParse(json['published_at'] as String)
        : null,
    id: json['id'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'iso_639_1': iso6391?.name,
    'iso_3166_1': iso31661?.name,
    'name': name,
    'key': key,
    'site': site?.name,
    'size': size,
    'type': type,
    'official': official,
    'published_at': publishedAt?.toIso8601String(),
    'id': id,
  };
}

enum Iso31661 { US }

enum Iso6391 { EN }

enum Site { YOU_TUBE }
