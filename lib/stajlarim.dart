import 'package:flutter/material.dart';
import 'package:staj_gunlugum/blocs/staj_bloc.dart';
import 'package:staj_gunlugum/models/staj_db_model.dart';
import 'package:uuid/uuid.dart';
import 'dosyaYapragi.dart';

class stajlarim extends StatefulWidget {
  const stajlarim({Key? key}) : super(key: key);
  @override
  State<stajlarim> createState() => _stajlarimState();
}

class _stajlarimState extends State<stajlarim> {
  StajBloc bloc = new StajBloc();
  List<Widget> _stajList = [];

  void _addStajWidget() {
    var uuid = new Uuid();
    StajDbModel? stajDbModel;
    stajDbModel = StajDbModel(stajAd: 'Deneme', stajUN: uuid.v1());

    setState(() {
      _stajList.add(_staj());
    });

    bloc.stajEkle(stajDbModel);
  }

  Widget _staj() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const dosyaYapragi()));
      },
      child: Container(
        height: 120,
        margin: EdgeInsets.only(top: 5, left: 8, right: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Center(
          child: ListTile(
            title: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  //labelText: "Staj Yeriniz",
                  hintText: "Staj Yeriniz"),
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            subtitle: const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  hintText: "Staj gün sayısı"),
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black),
            ),
            trailing: Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      _stajList.length--;
                    });
                  },
                  child: Container(
                    width: 50,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text('Sil',
                            style: TextStyle(fontSize: 20, color: Colors.grey)),
                        SizedBox(
                          width: 1,
                        ),
                        Icon(
                          Icons.delete,
                          textDirection: TextDirection.rtl,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    bloc.stajGetir();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA5D6A7),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Stajlarım"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _stajList.length,
          itemBuilder: (context, index) {
            return _stajList[index];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: _addStajWidget,
        tooltip: 'Add',
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
