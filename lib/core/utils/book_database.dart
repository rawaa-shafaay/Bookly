import 'dart:io';
import 'package:bookly/modules/home/models/book.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:bookly/modules/home/models/volume_info.dart';
import 'package:bookly/modules/home/models/image_links.dart';

class BookDatabase {
  static final BookDatabase _instance = BookDatabase._internal();
  static Database? _database;

  BookDatabase._internal();
  factory BookDatabase() => _instance;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, 'bookly.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE books (
      id TEXT,
      category TEXT,
      title TEXT,
      authors TEXT,
      description TEXT,
      thumbnail TEXT,
      PRIMARY KEY (id, category)
    )
  ''');
  }

  Future<void> insertBook(Book book, String category) async {
    final db = await database;
    await db.insert('books', {
      'id': book.id,
      'category': category,
      'title': book.volumeInfo?.title,
      'authors': book.volumeInfo?.authors?.join(',') ?? '',
      'description': book.volumeInfo?.description ?? '',
      'thumbnail': book.volumeInfo?.imageLinks?.thumbnail ?? '',
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Book>> getCachedBooks(String category) async {
    final db = await database;
    final maps = await db.query(
      'books',
      where: 'category = ?',
      whereArgs: [category],
    );

    return maps.map((map) {
      return Book(
        id: map['id'] as String,
        volumeInfo: VolumeInfo(
          title: map['title'] as String,
          authors: (map['authors'] as String).split(','),
          description: map['description'] as String,
          imageLinks: ImageLinks(thumbnail: map['thumbnail'] as String),
        ),
      );
    }).toList();
  }

  Future<void> clearBooks(String category) async {
    final db = await database;
    await db.delete('books', where: 'category = ?', whereArgs: [category]);
  }
}
