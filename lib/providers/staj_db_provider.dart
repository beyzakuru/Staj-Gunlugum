import 'package:sqflite/sqlite_api.dart';
import 'package:staj_gunlugum/models/staj_db_model.dart';
import 'package:staj_gunlugum/utils/database_helper.dart';

class StajDBProvider {
  Future<void> stajKaydet(StajDbModel model) async {
    final Database? db = await DatabaseHelper.instance.database;
    final batch = db!.batch();
    try {
      batch.insert("Staj", model.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace);

      final result = await batch.commit();
      print('result ... ' + result.toString());
    } catch (Exception) {
      print('--------------------------------------------------------');
      print(Exception.toString());
    }
  }

  Future<void> stajGetir() async {
    final Database? db = await DatabaseHelper.instance.database;
    List<StajDbModel> sonucList = [];
    try {
      List<Map<String, dynamic>>? maps = await db!.query('Staj');

      sonucList = List.generate(maps.length, (i) {
        return StajDbModel.fromJson(maps[i]);
      });
      print('1111');
      print(sonucList.length.toString());
      print('222');
    } catch (Exception) {
      print('--------------------------------------------------------');
      print(Exception.toString());
    }
  }
}
