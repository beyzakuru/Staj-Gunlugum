import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:staj_gunlugum/anaSayfa.dart';
import 'package:staj_gunlugum/giris.dart';

class ayarlar extends StatefulWidget {
  const ayarlar({Key? key}) : super(key: key);

  @override
  State<ayarlar> createState() => _ayarlarState();
}

class _ayarlarState extends State<ayarlar> {
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
                height: 200,
                width: double.infinity,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 35, left: 20),
                      child: Column(
                        children: const [
                          Text(
                            "Ayarlar",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Hesap Bilgileri",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        margin: const EdgeInsets.only(top: 35),
                        height: 60,
                        width: 350,
                        //color: Colors.white,
                        padding: EdgeInsets.only(left: 15, top: 20),
                        child: const Text(
                          "Giriş ve Gizlilik",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Center(
              child: Container(
                height: 350,
                width: 350,
                //color: Colors.white,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Adı",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Soyadı",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.school),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Üniverstie",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.numbers),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Numara",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.lock),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Parola",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const anasayfa()));
                      },
                      child: Container(
                        height: 60,
                        width: 175,
                        //color: Colors.white,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                        ),
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const anasayfa()));
                                },
                                icon: Icon(Icons.arrow_back_ios_new),
                              ),
                            ),
                            const SizedBox(width: 3),
                            const Text("Geri", style: TextStyle(fontSize: 23)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      //burası girişe atmıyor bir sorun var
                      onTap: () {
                        prefs.setStringList(
                            "lastUser", ["deneme", "sifre", "false"]);
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const giris()));
                      },
                      child: Container(
                        height: 60,
                        width: 175,
                        //color: Colors.white,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: <Widget>[
                            const Text("Çıkış Yap",
                                style: TextStyle(fontSize: 23)),
                            const SizedBox(width: 3),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: IconButton(
                                onPressed: () {
                                  prefs.setStringList(
                                      "lastUser", ["deneme", "sifre", "false"]);
                                  Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const giris()));
                                },
                                icon: Icon(Icons.logout),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
