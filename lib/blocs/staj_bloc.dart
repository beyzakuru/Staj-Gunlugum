import 'package:staj_gunlugum/models/staj_db_model.dart';
import 'package:staj_gunlugum/providers/staj_db_provider.dart';

class StajBloc {
  Future<void> stajEkle(StajDbModel model) async {
    await stajDBProvider.stajKaydet(model);
  }

  Future<void> stajGetir() async {
    await stajDBProvider.stajGetir();
  }
}

final stajDBProvider = new StajDBProvider();
