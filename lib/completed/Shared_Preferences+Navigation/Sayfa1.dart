import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yemek_tarifi/main.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  Future<void> veriOku() async {
    var sp = await SharedPreferences.getInstance();

    String ad = sp.getString("ad") ?? "isim yok";
    int yas = sp.getInt("yas") ?? 99;
    double boy = sp.getDouble("boy") ?? 9.99;

    var gelenArkadasListe = sp.getStringList("arkadasListe") ?? null;

    print("Ad : $ad");
    print("Yas : $yas");
    print("Boy : $boy");

    for (var a in gelenArkadasListe!) {
      print("Arkadas : $a");
    }
  }

  @override
  void initState() {
    super.initState();
    veriOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa A"),
        leading: IconButton(
          onPressed: () {
            print("deneme");
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          icon: Icon(Icons.home),
        ),
      ),
      body: Center(),
    );
  }
}
