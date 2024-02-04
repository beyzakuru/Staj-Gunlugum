class StajDbModel {
  String? stajUN;
  String? stajAd;
  String? stajSoyAd;
  String? stajOkul;
  String? stajOkulNo;
  String? stajSifre;
  String? stajCalisilanKisim;
  String? stajAlani;
  String? stajYapilanIs;
  String? stajSayfaNo;
  String? stajMetin;
  String? stajKisimSorumlusuAdSoyad;
  String? stajTarih;

  StajDbModel(
      {this.stajUN,
      this.stajAd,
      this.stajSoyAd,
      this.stajOkul,
      this.stajOkulNo,
      this.stajSifre,
      this.stajCalisilanKisim,
      this.stajAlani,
      this.stajYapilanIs,
      this.stajSayfaNo,
      this.stajMetin,
      this.stajKisimSorumlusuAdSoyad,
      this.stajTarih});

  StajDbModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stajUN = json['StajUN'];
    stajAd = json['StajAd'];
    stajSoyAd = json['StajSoyAd'];
    stajOkul = json['StajOkul'];
    stajOkulNo = json['StajOkulNo'];
    stajSifre = json['StajSifre'];
    stajCalisilanKisim = json['StajCalisilanKisim'];
    stajAlani = json['StajAlani'];
    stajYapilanIs = json['StajYapilanIs'];
    stajSayfaNo = json['StajSayfaNo'];
    stajMetin = json['StajMetin'];
    stajKisimSorumlusuAdSoyad = json['StajKisimSorumlusuAdSoyad'];
    stajTarih = json['StajTarih'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();
    json['StajUN'] = stajUN;
    json['StajAd'] = stajAd;
    json['StajSoyAd'] = stajSoyAd;
    json['StajOkul'] = stajOkul;
    json['StajOkulNo'] = stajOkulNo;
    json['StajSifre'] = stajSifre;
    json['StajCalisilanKisim'] = stajCalisilanKisim;
    json['StajAlani'] = stajAlani;
    json['StajYapilanIs'] = stajYapilanIs;
    json['StajSayfaNo'] = stajSayfaNo;
    json['StajMetin'] = stajMetin;
    json['StajKisimSorumlusuAdSoyad'] = stajKisimSorumlusuAdSoyad;
    json['StajTarih'] = stajTarih;
    return json;
  }
}
