import 'package:moviesbox/src/domain/entity/markdown_notes_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MarkdownNoteDatabaseHelper {
  static final MarkdownNoteDatabaseHelper _instance =
      MarkdownNoteDatabaseHelper._internal();

  factory MarkdownNoteDatabaseHelper() => _instance;

  MarkdownNoteDatabaseHelper._internal();

  static Database? _database;

  static const _dbName = "markdown_notes.db";
  static const _tableName = 'notes';

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB(_dbName);
    return _database!;
  }

  Future<Database> _initDB(String fileName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, fileName);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await _createTable(db);
  }

  Future<void> _createTable(Database db) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $_tableName (
        uid TEXT PRIMARY KEY,
        id INTEGER,
        type TEXT,
        title TEXT,
        data TEXT NOT NULL,
        createdAt INTEGER NOT NULL,
        updatedAt INTEGER NOT NULL
      )
    ''');
  }

  bool _isNoSuchTableError(DatabaseException e) {
    return e.toString().contains('no such table');
  }

  Future<void> insertNote(MarkdownNote note) async {
    final db = await database;
    try {
      await db.insert(
        _tableName,
        note.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } on DatabaseException catch (e) {
      if (_isNoSuchTableError(e)) {
        await _createTable(db);
        await db.insert(
          _tableName,
          note.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      } else {
        rethrow;
      }
    }
  }

  Future<void> updateNoteByUid(String uid, MarkdownNote note) async {
    final db = await database;
    try {
      await db.update(
        _tableName,
        note.toMap(),
        where: 'uid = ?',
        whereArgs: [uid],
      );
    } on DatabaseException catch (e) {
      if (_isNoSuchTableError(e)) {
        await _createTable(db);
        await db.update(
          _tableName,
          note.toMap(),
          where: 'uid = ?',
          whereArgs: [uid],
        );
      } else {
        rethrow;
      }
    }
  }

  Future<List<MarkdownNote>> getAllNotes() async {
    final db = await database;
    try {
      final maps = await db.query(_tableName);
      return maps.map((e) => MarkdownNote.fromMap(e)).toList();
    } on DatabaseException catch (e) {
      if (_isNoSuchTableError(e)) return [];
      rethrow;
    }
  }

  Future<List<MarkdownNote>> getNotesByType(String type) async {
    final db = await database;
    try {
      final maps = await db.query(
        _tableName,
        where: 'type = ?',
        whereArgs: [type],
      );
      return maps.map((e) => MarkdownNote.fromMap(e)).toList();
    } on DatabaseException catch (e) {
      if (_isNoSuchTableError(e)) return [];
      rethrow;
    }
  }

  Future<void> deleteNoteByUid(String uid) async {
    final db = await database;
    try {
      await db.delete(_tableName, where: 'uid = ?', whereArgs: [uid]);
    } on DatabaseException catch (e) {
      if (_isNoSuchTableError(e)) return;
      rethrow;
    }
  }

  Future<void> clearAllNotes() async {
    final db = await database;
    try {
      await db.delete(_tableName);
    } on DatabaseException catch (e) {
      if (_isNoSuchTableError(e)) return;
      rethrow;
    }
  }
}
