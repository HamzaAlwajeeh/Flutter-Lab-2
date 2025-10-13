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
    String path = '$databasePath/Hamza.db';
    Database myDb = await openDatabase(
      path,
      onCreate: _onCreate,
      version: 2,
      onUpgrade: _onUpgrade,
    );
    return myDb;
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
  CREATE TABLE "notes" (
  "id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "title"	TEXT NOT NULL
);
  ''');
    log('Database and Tables Created Successfully');
  }

  _onUpgrade(Database db, int oldVersion, int newVersion) {
    log('Database Upgrade from $oldVersion to $newVersion');
  }

  readData(String sql) async {
    Database myDb = await db;
    List<Map> response = await myDb.rawQuery(sql);
    return response;
  }

  insertData(String sql) async {
    Database myDb = await db;
    int response = await myDb.rawInsert(sql);
    return response;
  }

  updateData(String sql) async {
    Database myDb = await db;
    int response = await myDb.rawUpdate(sql);
    return response;
  }

  deleteData(String sql) async {
    Database myDb = await db;
    int response = await myDb.rawDelete(sql);
    return response;
  }
}
