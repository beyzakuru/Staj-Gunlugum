import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:staj_gunlugum/sabitler.dart';
import 'package:flutter/rendering.dart';
import 'anaSayfa.dart';
import 'kayıt.dart';

class giris extends StatefulWidget {
  const giris({Key? key}) : super(key: key);

  @override
  State<giris> createState() => _girisState();
}

class _girisState extends State<giris> {
  TextEditingController okulnoController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  late SharedPreferences prefs;
  R resources = R();

  @override
  void initState() {
    awakeprefes();
    super.initState();
  }

  Future<void> awakeprefes() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey("lastUser")) {
      if (prefs.getStringList("lastUser")?[2] == "true") {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => anasayfa()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading:
              false, //app bar soluna varsayılan olarak gelen geri iconu kaldırıldı.
          backgroundColor: Colors.green,
          toolbarHeight: 170, //yükseklik verildi.
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(45),
              bottomLeft: Radius.circular(45),
            ),
          ), //yuvarlak dikdörtgen kenarlık
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/notdefteri.png',
                height: 100,
                width: 370,
                //fit: BoxFit.contain,
                //alignment: FractionalOffset.center,
              ),
              const Text(
                'STAJ GÜNLÜĞÜM',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                'GİRİŞ YAP',
                style: TextStyle(
                  color: Color(0xFF81c784),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 45),
              child: TextField(
                controller: okulnoController,
                decoration: const InputDecoration(
                  border: InputBorder
                      .none, //varsayılan olarak gelen underline kaldırıldı.
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  contentPadding: EdgeInsets.only(top: 20),
                  hintText: ('OKUL NUMARANIZI GİRİNİZ'),
                  prefixIcon: Icon(
                    Icons.numbers,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 45),
              child: TextField(
                controller: pwController,
                decoration: const InputDecoration(
                  border: InputBorder
                      .none, //varsayılan olarak gelen underline kaldırıldı.
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  contentPadding: EdgeInsets.only(top: 20),
                  hintText: ('ŞİFRENİZİ GİRİNİZ'),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.green,
                  ),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              child: MaterialButton(
                onPressed: () => {
                  if (okulnoController.text.length >= 9 &&
                      pwController.text.length > 5)
                    {
                      if (prefs.containsKey(okulnoController.text) &&
                          pwController.text ==
                              prefs.getString(okulnoController.text))
                        {
                          resources.showMyDialog(context, "Başarılı",
                              "Giriş başarılı", Colors.green),
                          prefs.setStringList("lastUser", [
                            okulnoController.text,
                            pwController.text,
                            "true"
                          ]),
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => anasayfa()))
                        }
                      else
                        {
                          resources.showMyDialog(
                              context,
                              "Hata",
                              "Giriş başarısız. Okul numaranız veya şifre yanlış",
                              Colors.redAccent),
                        }
                    }
                  else
                    {
                      resources.showMyDialog(
                          context,
                          "Hata",
                          "Lütfen geçerli bir okul numarası veya şifre giriniz",
                          Colors.redAccent),
                    },
                },
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFA5D6A7),
                        Color(0xFF81c784),
                        Color(0xFF66BB6A),
                        Color(0xFF81c784),
                        Color(0xFFA5D6A7),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'İlerle',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 105, vertical: 8),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const kayit()))
                },
                child: const Text(
                  "Bir Hesabın Yok Mu? Hemen Oluştur.",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF388E3C)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
