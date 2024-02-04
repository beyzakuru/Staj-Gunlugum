import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:staj_gunlugum/sabitler.dart';
import 'giris.dart';

class kayit extends StatefulWidget {
  const kayit({Key? key}) : super(key: key);

  @override
  State<kayit> createState() => _kayitState();
}

class _kayitState extends State<kayit> {
  late SharedPreferences prefs;
  TextEditingController okulnoController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  R resources = R();

  @override
  void initState() {
    awakeprefes();
    super.initState();
  }

  Future<void> awakeprefes() async {
    prefs = await SharedPreferences.getInstance();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
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
        body: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                'KAYDOL',
                style: TextStyle(
                    color: Color(0xFF81c784),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 45),
              child: const TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: 'ADINIZ',
                  //labelStyle: TextStyle(color: Colors.black),
                  hintText: ('ADINIZI GİRİNİZ'),
                  contentPadding: EdgeInsets.only(top: 19),
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 45),
              child: const TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: "SOYADINIZ",
                  hintText: ("SOYADINIZI GİRİNİZ"),
                  contentPadding: EdgeInsets.only(top: 19),
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 45),
              child: const TextField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: "ÜNİVERSİTENİZ",
                  hintText: 'BAĞLI OLDUĞUNUZ ÜNİVERSİTE',
                  contentPadding: EdgeInsets.only(top: 19),
                  prefixIcon: Icon(
                    Icons.school,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 45),
              child: TextField(
                controller: okulnoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: "OKUL NUMARANIZ",
                  hintText: 'OKUL NUMARANIZI GİRİNİZ',
                  contentPadding: EdgeInsets.only(top: 20),
                  prefixIcon: Icon(
                    Icons.numbers,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 45),
              child: TextField(
                controller: pwController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: "PAROLANIZ",
                  hintText: 'PAROLANIZI GİRİNİZ',
                  contentPadding: EdgeInsets.only(top: 19),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.green,
                  ),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(height: 10),
            Container(
              child: MaterialButton(
                onPressed: () => {
                  if (okulnoController.text.length < 10 &&
                      pwController.text.length > 6)
                    {
                      if (prefs.containsKey(okulnoController.text))
                        {
                          resources.showMyDialog(context, "Hata",
                              "Böyle bir hesap zaten var", Colors.redAccent),
                          setState(() {
                            okulnoController.clear();
                            pwController.clear();
                          })
                        }
                      else
                        {
                          prefs.setBool(resources.isFirstLaunch, true),
                          prefs.setString(
                              okulnoController.text, pwController.text),
                          resources.showMyDialog(
                              context,
                              "Başarılı",
                              "Hesap oluşturma başarıyla tamamlandı",
                              Colors.green),
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const giris()))
                        }
                    }
                  else
                    {
                      resources.showMyDialog(
                          context,
                          "Hata",
                          "Hesap oluşturma işlemi başarısız. Lütfen geçerli bir şifre "
                              "veya okul numarası girdiğinizden emin olun.",
                          Colors.redAccent),
                    }
                },
                //shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.00,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
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
                    "DEVAM",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 110, vertical: 8),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => giris()))
                },
                child: const Text(
                  "Zaten bir hesabım var. Giriş yap .",
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
