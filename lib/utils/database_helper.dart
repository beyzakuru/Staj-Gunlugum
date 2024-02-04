import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static const _databaseName = "staj_gunlugu_database.db";
  static const _databaseVersion = 1;

  //singleton
  DatabaseHelper._();

  static final DatabaseHelper instance = DatabaseHelper._();

  Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await _initDatabase();

    return _database;
  }

  Future<Database> _initDatabase() async {
    var dbPath = join(await getDatabasesPath(), _databaseName);
    print('_initDatabase');
    deleteDatabase(dbPath);

    return openDatabase(dbPath,
        version: _databaseVersion, onCreate: _onCreateDb);
  }

  _onCreateDb(Database db, int version) async {
    await db.execute('''CREATE TABLE "Staj" (
                            "StajUN"  TEXT NOT NULL UNIQUE,
                            "StajAd"  TEXT NOT NULL,
                            PRIMARY KEY("StajUN")) WITHOUT ROWID;''');
  }
}
