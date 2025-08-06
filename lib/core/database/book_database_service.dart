import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class BookDatabaseService {
  static final BookDatabaseService _instance = BookDatabaseService._internal();
  static Database? _database;

  BookDatabaseService._internal();
  factory BookDatabaseService() => _instance;

  static const String _tableName = 'books';
  static const String _dbName = 'bookly.db';

  Future<Database> get database async {
    if (_database != null) return _database!;
    final dir = await getApplicationDocumentsDirectory();
    final path = join(dir.path, _dbName);
    // await deleteDatabase(path);
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      onConfigure: (db) => db.execute('PRAGMA foreign_keys = ON'),
    );
    return _database!;
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tableName (
        id TEXT NOT NULL,
        category TEXT NOT NULL,
        title TEXT,
        authors TEXT,
        description TEXT,
        thumbnail TEXT,
        averageRating REAL,
        ratingsCount INTEGER,
        PRIMARY KEY (id, category)
      )
    ''');
  }

  Future<int> insert(Map<String, dynamic> data) async {
    final db = await database;
    return await db.insert(
      _tableName,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Map<String, dynamic>>> queryByCategory(String category) async {
    final db = await database;
    return await db.query(
      _tableName,
      where: 'category = ?',
      whereArgs: [category],
    );
  }

  Future<void> deleteByCategory(String category) async {
    final db = await database;
    await db.delete(_tableName, where: 'category = ?', whereArgs: [category]);
  }
}
