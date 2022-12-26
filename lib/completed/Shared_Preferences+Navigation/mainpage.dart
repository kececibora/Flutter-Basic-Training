// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:yemek_tarifi/Sayfa1.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Training',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.amber,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Future<void> veriKaydi() async {
//     var sp = await SharedPreferences.getInstance();
//     sp.setString("ad", "Bora");
//     sp.setInt("yas", 28);
//     sp.setDouble("boy", 1.78);
//     sp.setBool("bekarMi", true);

//     var arkadasListe = <String>[];
//     arkadasListe.add("Suna");
//     arkadasListe.add("Ali");
//     sp.setStringList("arkadasListe", arkadasListe);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var ekranBilgisi = MediaQuery.of(context);
//     final double ekranYuksekligi = ekranBilgisi.size.height;
//     final double ekranGenisligi = ekranBilgisi.size.height;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Anasayfa"),
//         leading: IconButton(
//           onPressed: () {
//             print("deneme");
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => MyApp()));
//           },
//           icon: Icon(Icons.home),
//         ),
//       ),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//               onPressed: () {
//                 veriKaydi();
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SayfaA()),
//                 );
//               },
//               child: Text("geçiş yap"))
//         ],
//       )),
//     );
//   }
// }
