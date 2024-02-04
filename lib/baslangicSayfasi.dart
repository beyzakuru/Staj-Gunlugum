import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:staj_gunlugum/giris.dart';
import 'package:staj_gunlugum/kay%C4%B1t.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:staj_gunlugum/sabitler.dart';

class baslangicSayfasi extends StatefulWidget {
  const baslangicSayfasi({Key? key}) : super(key: key);

  @override
  State<baslangicSayfasi> createState() => _baslangicSayfasiState();
}

class _baslangicSayfasiState extends State<baslangicSayfasi> {
  late SharedPreferences prefs;
  bool alreadyRegistered = false;
  R resources = R();

  @override
  void initState() {
    awakeprefes();
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  Home(alreadyRegistered: alreadyRegistered)));
    });
  }

  Future<void> awakeprefes() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(resources.isFirstLaunch)) {
      alreadyRegistered = true;
    }
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/notdefteri.png',
                height: 130,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'STAJ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                'GÜNLÜĞÜM',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              if (Platform.isIOS)
                const CupertinoActivityIndicator(
                  radius: 11,
                )
              else
                const LinearProgressIndicator(
                  color: Colors.white,
                )
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  final bool? alreadyRegistered;
  const Home({Key? key, this.alreadyRegistered}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF2661FA),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: (alreadyRegistered ?? false) ? const giris() : const kayit(),
    );
  }
}
