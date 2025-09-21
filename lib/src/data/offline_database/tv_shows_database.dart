import 'dart:io';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class TvShowsDatabase {
  static final TvShowsDatabase _instance = TvShowsDatabase._internal();
  factory TvShowsDatabase() => _instance;
  TvShowsDatabase._internal();

  static Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, "tv_shows.db");
    return await openDatabase(path, version: 1);
  }

  Future<void> createTableIfNotExists(String tableName) async {
    final db = await database;
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $tableName (
        id INTEGER PRIMARY KEY,
        name TEXT,
        originalName TEXT,
        overview TEXT,
        posterPath TEXT,
        backdropPath TEXT,
        firstAirDate TEXT,
        voteAverage REAL,
        voteCount INTEGER,
        popularity REAL,
        adult INTEGER,
        mediaType TEXT,
        genreIds TEXT,
        originalLanguage TEXT,
        originCountry TEXT
      )
    ''');
  }

  Future<void> insertTvShows({
    required List<TvShowsResult> shows,
    required String tableName,
    bool isDeleteOld = false,
  }) async {
    final db = await database;
    await createTableIfNotExists(tableName);
    if (isDeleteOld) {
      await db.delete(tableName); // Optional: clear before insert
    }

    for (final show in shows) {
      await db.insert(
        tableName,
        show.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<TvShowsResult>> getStoredTvShows({
    required String tableName,
  }) async {
    final db = await database;
    await createTableIfNotExists(tableName);
    final result = await db.query(tableName);
    return result.map((map) => TvShowsResultMapper.fromMap(map)).toList();
  }

  Future<void> clearTvShows({required String tableName}) async {
    final db = await database;
    await createTableIfNotExists(tableName);
    await db.delete(tableName);
  }
}

extension TvShowsResultMapper on TvShowsResult {
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'originalName': originalName,
      'overview': overview,
      'posterPath': posterPath,
      'backdropPath': backdropPath,
      'firstAirDate': firstAirDate?.toIso8601String(),
      'voteAverage': voteAverage,
      'voteCount': voteCount,
      'popularity': popularity,
      'adult': adult == true ? 1 : 0,
      'mediaType': mediaType?.name,
      'genreIds': genreIds?.join(','),
      'originalLanguage': originalLanguage?.name,
      'originCountry': originCountry?.map((e) => e.name).join(','),
    };
  }

  static TvShowsResult fromMap(Map<String, dynamic> map) {
    return TvShowsResult(
      id: map['id'],
      name: map['name'],
      originalName: map['originalName'],
      overview: map['overview'],
      posterPath: map['posterPath'],
      backdropPath: map['backdropPath'],
      firstAirDate: map['firstAirDate'] != null
          ? DateTime.tryParse(map['firstAirDate'])
          : null,
      voteAverage: (map['voteAverage'] as num?)?.toDouble(),
      voteCount: map['voteCount'],
      popularity: (map['popularity'] as num?)?.toDouble(),
      adult: map['adult'] == 1,
      mediaType: map['mediaType'] != null
          ? MediaType.values.firstWhere(
              (e) => e.name == map['mediaType'],
              orElse: () => MediaType.TV,
            )
          : null,
      genreIds: map['genreIds'] != null
          ? (map['genreIds'] as String)
                .split(',')
                .map((e) => int.tryParse(e) ?? 0)
                .toList()
          : null,
      originalLanguage: map['originalLanguage'] != null
          ? OriginalLanguage.values.firstWhere(
              (e) => e.name == map['originalLanguage'],
              orElse: () => OriginalLanguage.EN,
            )
          : null,
      originCountry: map['originCountry'] != null
          ? (map['originCountry'] as String)
                .split(',')
                .map(
                  (e) => OriginCountry.values.firstWhere(
                    (oc) => oc.name == e,
                    orElse: () => OriginCountry.US,
                  ),
                )
                .toList()
          : null,
    );
  }
}
