import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dosyaYapragi extends StatefulWidget {
  const dosyaYapragi({Key? key}) : super(key: key);

  @override
  State<dosyaYapragi> createState() => _dosyaYapragiState();
}

class _dosyaYapragiState extends State<dosyaYapragi> {
  List<Widget> _sayfaList = [];

  void _addSayfaWidget() {
    setState(() {
      _sayfaList.add(_sayfa());
    });
  }

  Widget _sayfa() {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
          child: Row(
            children: <Widget>[
              Container(
                height: 30,
                width: size.width * 0.4508,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(width: 2, color: Colors.black),
                    left: BorderSide(width: 2, color: Colors.black),
                  ),
                ),
                padding: const EdgeInsets.only(left: 6, top: 11),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Çalışılan Kısım',
                  ),
                ),
              ),
              Container(
                height: 30,
                width: size.width * 0.4508,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(width: 2, color: Colors.black),
                    left: BorderSide(width: 2, color: Colors.black),
                    right: BorderSide(width: 2, color: Colors.black),
                  ),
                ),
                padding: const EdgeInsets.only(left: 6, top: 11),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Staj Alanı',
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
          child: Row(
            children: <Widget>[
              Container(
                height: 30,
                width: size.width * 0.4508,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(width: 2, color: Colors.black),
                    left: BorderSide(width: 2, color: Colors.black),
                  ),
                ),
                padding: const EdgeInsets.only(left: 6, top: 11),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Yapılan İş',
                  ),
                ),
              ),
              Container(
                height: 30,
                width: size.width * 0.4508,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(width: 2, color: Colors.black),
                    left: BorderSide(width: 2, color: Colors.black),
                    right: BorderSide(width: 2, color: Colors.black),
                  ),
                ),
                padding: const EdgeInsets.only(left: 6, top: 11),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Sayfa No',
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
          child: Row(
            children: [
              Container(
                height: 400,
                width: size.width * 0.9016,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(width: 2, color: Colors.black),
                    left: BorderSide(width: 2, color: Colors.black),
                    right: BorderSide(width: 2, color: Colors.black),
                  ),
                ),
                padding: const EdgeInsets.only(left: 6, top: 11),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  maxLines: 15,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
          child: Row(
            children: [
              Container(
                height: 30,
                width: size.width * 0.9016,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(width: 2, color: Colors.black),
                    left: BorderSide(width: 2, color: Colors.black),
                    right: BorderSide(width: 2, color: Colors.black),
                  ),
                ),
                padding: const EdgeInsets.only(left: 6, top: 11),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Kısım Sorumlusunun Adı-Soyadı',
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
          child: Row(
            children: [
              Container(
                height: 30,
                width: size.width * 0.9016,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2),
                ),
                padding: const EdgeInsets.only(left: 6, top: 11),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '../../....' 'Onay/Mühür',
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    _sayfaList.length--;
                  });
                },
                padding: const EdgeInsets.fromLTRB(140, 7, 0, 0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFF66BB6A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'Sayfayı Sil',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text('Staj Dosya Yaprağı'),
          actions: [
            IconButton(
              onPressed: (_addSayfaWidget),
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFFA5D6A7),
        body: Center(
          child: ListView.builder(
            itemCount: _sayfaList.length,
            itemBuilder: (context, index) {
              return _sayfaList[index];
            },
          ),
        ),
      ),
    );
  }
}
