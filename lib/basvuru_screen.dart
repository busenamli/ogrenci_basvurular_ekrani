import 'package:flutter/material.dart';
import 'package:ogrenci_basvurular_ekrani/ogrenci_biten_basvuru.dart';
import 'package:ogrenci_basvurular_ekrani/ogrenci_devam_eden_basvuru.dart';

class Basvuru extends StatefulWidget{
  @override
  State<Basvuru> createState() => _BasvuruPageState();
}

class _BasvuruPageState extends State<Basvuru> {

  List<String> modelListBasvuruDevamEden = [
    "Bir dosya",
    "İki dosya",
    "Üç dosya",
    "Dört dosya",
  ];
  List<String> modelListBasvuruBiten = [
    "Bir dosya",
    "İki dosya",
    "Üç dosya",
    "Dört dosya",
    "Beş dosya",
    "Altı dosya"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(80.0),
              child: AppBar(
                backgroundColor: Colors.green,
                bottom: TabBar(
                  indicatorColor: Colors.green,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.swap_vertical_circle_outlined),
                      text: 'Devam Eden Başvurular',
                    ),
                    Tab(
                      icon: Icon(Icons.check_circle_rounded),
                      text: 'Biten Başvurular',
                    ),
                  ],
                ),
              ),
            ),
            body: TabBarView(
              children: [
                DevamEdenBasvuru(modelList: modelListBasvuruDevamEden),
                BitenBasvuru(modelList: modelListBasvuruBiten),
              ],
            ),
          )),
    );
  }
}