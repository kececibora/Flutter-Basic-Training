import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Training',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tfgirdi = TextEditingController();

  Future<void> veriYaz() async {
    var ad = await getApplicationDocumentsDirectory();
    var uygulamaDosyalamaYolu = await ad.path;
    var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");

    dosya.writeAsString(tfgirdi.text);
    tfgirdi.text = "";
  }

  Future<void> veriOku() async {
    try {
      var ad = await getApplicationDocumentsDirectory();
      var uygulamaDosyalamaYolu = await ad.path;
      var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");
      String okunanVeri = await dosya.readAsString();
      tfgirdi.text = okunanVeri;
    } catch (e) {
      e.toString();
    }
  }

  Future<void> veriSil() async {
    var ad = await getApplicationDocumentsDirectory();
    var uygulamaDosyalamaYolu = await ad.path;
    var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");

    if (dosya.existsSync()) {
      dosya.delete();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: tfgirdi,
              decoration: InputDecoration(hintText: "Veri Giriniz"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    veriYaz();
                  },
                  child: Text("Yaz"),
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    veriOku();
                  },
                  child: Text("Oku"),
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    veriSil();
                  },
                  child: Text("Sil"),
                ),
              ],
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
