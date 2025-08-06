import 'package:bookly/core/database/book_database_service.dart';
import 'package:bookly/data/models/book_model.dart';
import 'package:bookly/data/models/volume_info.dart';
import 'package:bookly/data/models/image_links.dart';
import 'package:sqflite/sqflite.dart';

class BookCacheDataSource {
  final BookDatabaseService _dbService;

  BookCacheDataSource(this._dbService);

  Future<void> insertBook(BookModel book, String category) async {
    final db = await _dbService.database;
    await db.insert('books', {
      'id': book.id,
      'category': category,
      'title': book.volumeInfo.title ?? '',
      'authors': book.volumeInfo.authors?.join(',') ?? '',
      'description': book.volumeInfo.description ?? '',
      'thumbnail': book.volumeInfo.imageLinks?.thumbnail ?? '',
      'averageRating': book.volumeInfo.averageRating ?? 0.0,
      'ratingsCount': book.volumeInfo.ratingsCount ?? 0,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<BookModel>> getCachedBooks(String category) async {
    final db = await _dbService.database;
    final maps = await db.query(
      'books',
      where: 'category = ?',
      whereArgs: [category],
    );

    return maps.map((map) {
      return BookModel(
        id: map['id'] as String,
        volumeInfo: VolumeInfo(
          title: map['title'] as String?,
          authors: (map['authors'] as String?)?.split(','),
          description: map['description'] as String?,
          averageRating: (map['averageRating'] as num?)?.toDouble(),
          ratingsCount: map['ratingsCount'] as int?,
          imageLinks: ImageLinks(thumbnail: map['thumbnail'] as String?),
        ),
      );
    }).toList();
  }

  Future<void> clearBooks(String category) async {
    final db = await _dbService.database;
    await db.delete('books', where: 'category = ?', whereArgs: [category]);
  }
}
