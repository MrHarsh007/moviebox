import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

@singleton
class WatchlistMovieDatabaseHelper {
  static final WatchlistMovieDatabaseHelper _instance =
      WatchlistMovieDatabaseHelper._internal();
  factory WatchlistMovieDatabaseHelper() => _instance;
  WatchlistMovieDatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB("watchlist.db"); // Use a single DB for both types
    return _database!;
  }

  Future<Database> _initDB(String fileName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, fileName);
    return await openDatabase(path, version: 1);
  }

  Future<void> _createTable(Database db, String tableName) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $tableName (
        id INTEGER PRIMARY KEY,
        date TEXT,
        poster TEXT,
        name TEXT,
        overview TEXT,
        rating REAL,
        vote_count REAL
      )
    ''');
  }

  Future<void> insertMovie(SavedMovie movie, String tableName) async {
    final db = await database;
    try {
      await db.insert(
        tableName,
        movie.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } on DatabaseException catch (e) {
      if (_isNoSuchTableError(e)) {
        await _createTable(db, tableName);
        await db.insert(
          tableName,
          movie.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      } else {
        rethrow;
      }
    }
  }

  Future<List<SavedMovie>> getAllMovies(String tableName) async {
    final db = await database;
    try {
      final maps = await db.query(tableName);
      return maps.map((e) => SavedMovie.fromMap(e)).toList();
    } on DatabaseException catch (e) {
      if (_isNoSuchTableError(e)) {
        return [];
      }
      rethrow;
    }
  }

  Future<bool> deleteMovieById(int id, String tableName) async {
    final db = await database;
    try {
      final result = await db.delete(
        tableName,
        where: 'id = ?',
        whereArgs: [id],
      );
      return result > 0;
    } on DatabaseException catch (e) {
      if (_isNoSuchTableError(e)) {
        return true; // Already considered deleted
      }
      rethrow;
    }
  }

  Future<void> clearAllMovies(String tableName) async {
    final db = await database;
    try {
      await db.delete(tableName);
    } on DatabaseException catch (e) {
      if (_isNoSuchTableError(e)) {
        // Do nothing
      } else {
        rethrow;
      }
    }
  }

  Future<bool> existsById(int id, String tableName) async {
    final db = await database;
    try {
      final result = await db.query(
        tableName,
        where: 'id = ?',
        whereArgs: [id],
        limit: 1,
      );
      return result.isNotEmpty;
    } on DatabaseException catch (e) {
      if (_isNoSuchTableError(e)) {
        return false;
      }
      rethrow;
    }
  }

  bool _isNoSuchTableError(DatabaseException e) {
    return e.toString().contains('no such table');
  }
}

class SavedMovie {
  final int id;
  final DateTime? date;
  final String? poster;
  final String? name;
  final String? overview;
  final double? rating;
  final double? voteCount;

  SavedMovie({
    required this.id,
    this.date,
    this.poster,
    this.name,
    this.overview,
    this.rating,
    this.voteCount,
  });

  factory SavedMovie.fromMap(Map<String, dynamic> map) {
    return SavedMovie(
      id: map['id'],
      date: map['date'] != null ? DateTime.tryParse(map['date']) : null,
      poster: map['poster'],
      name: map['name'],
      overview: map['overview'],
      rating: map['rating']?.toDouble(),
      voteCount: map['vote_count']?.toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date?.toIso8601String(),
      'poster': poster,
      'name': name,
      'overview': overview,
      'rating': rating,
      'vote_count': voteCount,
    };
  }
}
