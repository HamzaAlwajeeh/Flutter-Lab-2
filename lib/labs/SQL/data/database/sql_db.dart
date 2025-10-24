import 'dart:developer';

import 'package:sqflite/sqflite.dart';

class SqlDb {
  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    } else {
      _db = await initDb();
      return _db!;
    }
  }

  initDb() async {
    String databasePath = getDatabasesPath().toString();
    String path = '$databasePath/ContactsDB.db';
    Database myDb = await openDatabase(
      path,
      onCreate: _onCreate,
      version: 5,
      onUpgrade: _onUpgrade,
    );
    return myDb;
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
  CREATE TABLE "contacts" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL,
  "phone"	TEXT NOT NULL
);
  ''');
    log('Database and Tables Created Successfully');
  }

  _onUpgrade(Database db, int oldVersion, int newVersion) async {
    log('Database Upgrade from $oldVersion to $newVersion');

    await db.execute('DROP TABLE IF EXISTS contacts');
    await _onCreate(db, newVersion);
  }

  Future<List<Map<String, dynamic>>> readData(String sql) async {
    Database myDb = await db;
    List<Map<String, dynamic>> response = await myDb.rawQuery(sql);
    return response;
  }

  Future<int> insertData({required String sql}) async {
    Database myDb = await db;
    int response = await myDb.rawInsert(sql);
    return response;
  }

  Future<int> updateData({required String sql}) async {
    Database myDb = await db;
    int response = await myDb.rawUpdate(sql);
    return response;
  }

  Future<int> deleteData({required String sql}) async {
    Database myDb = await db;
    int response = await myDb.rawDelete(sql);
    return response;
  }
}
