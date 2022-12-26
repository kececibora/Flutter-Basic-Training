import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int sayac = 0;

  Future<void> sayacKontrol() async {
    var sp = await SharedPreferences.getInstance();

    sayac = sp.getInt("sayac") ?? 0;

    setState(() {
      sayac = sayac + 1;
    });

    sp.setInt("sayac", sayac);
  }

  @override
  void initState() {
    sayacKontrol();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deneme"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Açılış Sayısı : $sayac",
              style: TextStyle(fontSize: 50),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
