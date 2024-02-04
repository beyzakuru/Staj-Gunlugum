import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:staj_gunlugum/ayarlar.dart';
import 'package:staj_gunlugum/giris.dart';
import 'package:staj_gunlugum/stajlarim.dart';
import 'package:staj_gunlugum/takvim.dart';
import 'dosyaYapragi.dart';
import 'package:shared_preferences/shared_preferences.dart';

class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  late SharedPreferences prefs;
  @override
  void initState() {
    awakePrefs();
    super.initState();
  }

  awakePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFA5D6A7),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.green,
          toolbarHeight: 170,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(45),
              bottomLeft: Radius.circular(45),
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/notdefteri.png',
                fit: BoxFit.contain,
                height: 100,
                width: 370,
                alignment: FractionalOffset.center,
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: const <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.search),
                      Text(
                        'Yapmak istediğiniz işlemi seçiniz',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  width: 3,
                ),
                InkWell(
                  //hoverColor: Color(0xFFA5D6A7),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const stajlarim()));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.dynamic_feed_outlined,
                          size: 40,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Stajlarım',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const dosyaYapragi()));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.feed_outlined,
                          size: 40,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Staj Dosyası Yaprağı',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ayarlar()));
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.settings,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Ayarlar',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    prefs.setStringList(
                        "lastUser", ["deneme", "sifre", "false"]);
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => const giris()));
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.logout,
                          color: Colors.black,
                          size: 40,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Çıkış Yap',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
