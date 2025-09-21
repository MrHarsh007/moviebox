import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

@injectable
class MoviesDatabase {
  static final MoviesDatabase _instance = MoviesDatabase._internal();
  factory MoviesDatabase() => _instance;
  MoviesDatabase._internal();

  static Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "movies.db");

    return await openDatabase(path, version: 1);
  }

  Future<void> createTableIfNotExists(String tableName) async {
    final db = await database;
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $tableName (
        id INTEGER PRIMARY KEY,
        title TEXT,
        overview TEXT,
        posterPath TEXT,
        backdropPath TEXT,
        releaseDate TEXT,
        voteAverage REAL,
        voteCount INTEGER,
        popularity REAL,
        adult INTEGER,
        video INTEGER,
        genreIds TEXT,
        originalTitle TEXT,
        originalLanguage TEXT
      )
    ''');
  }

  Future<void> insertMovies({
    required String tableName,
    required List<MovieResult> movies,
    bool isDeleteOld = false,
  }) async {
    final db = await database;
    await createTableIfNotExists(tableName);
    if (isDeleteOld) {
      await db.delete(tableName); // Optional: clear before insert
    }

    for (final movie in movies) {
      await db.insert(
        tableName,
        movie.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<MovieResult>> getMovies({required String tableName}) async {
    final db = await database;
    await createTableIfNotExists(tableName);
    final result = await db.query(tableName);
    return result.map((map) => MovieResultMapper.fromMap(map)).toList();
  }

  Future<void> clearMovies(String tableName) async {
    final db = await database;
    await db.delete(tableName);
  }
}

extension MovieResultMapper on MovieResult {
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'overview': overview,
      'posterPath': posterPath,
      'backdropPath': backdropPath,
      'releaseDate': releaseDate?.toIso8601String(),
      'voteAverage': voteAverage,
      'voteCount': voteCount,
      'popularity': popularity,
      'adult': adult == true ? 1 : 0,
      'video': video == true ? 1 : 0,
      'genreIds': genreIds?.join(','),
      'originalTitle': originalTitle,
      'originalLanguage': originalLanguage?.name,
    };
  }

  static MovieResult fromMap(Map<String, dynamic> map) {
    return MovieResult(
      id: map['id'],
      title: map['title'],
      overview: map['overview'],
      posterPath: map['posterPath'],
      backdropPath: map['backdropPath'],
      releaseDate: map['releaseDate'] != null
          ? DateTime.tryParse(map['releaseDate'])
          : null,
      voteAverage: (map['voteAverage'] as num?)?.toDouble(),
      voteCount: map['voteCount'],
      popularity: (map['popularity'] as num?)?.toDouble(),
      adult: map['adult'] == 1,
      video: map['video'] == 1,
      genreIds: map['genreIds'] != null
          ? (map['genreIds'] as String)
                .split(',')
                .map((e) => int.tryParse(e) ?? 0)
                .toList()
          : null,
      originalTitle: map['originalTitle'],
      originalLanguage: map['originalLanguage'] != null
          ? OriginalLanguage.values.firstWhere(
              (e) => e.name == map['originalLanguage'],
              orElse: () => OriginalLanguage.EN,
            )
          : null,
    );
  }
}
