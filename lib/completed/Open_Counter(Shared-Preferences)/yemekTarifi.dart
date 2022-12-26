// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.amber,
//       ),
//       home: const MyHomePage(title: 'Yemek Tarifi'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var ekranBilgisi = MediaQuery.of(context);
//     final double ekranYuksekligi = ekranBilgisi.size.height;
//     final double ekranGenisligi = ekranBilgisi.size.height;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.home),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(children: [
//           SizedBox(
//             height: ekranYuksekligi / 2.5,
//             child: Image.asset("images/manti.jpg"),
//           ),
//           Row(
//             children: [
//               Expanded(
//                 child: SizedBox(
//                   height: ekranGenisligi / 10,
//                   child: TextButton(
//                     onPressed: () {
//                       print("Beğendim");
//                     },
//                     child: Yazi("Beğen", ekranGenisligi / 25),
//                     style: TextButton.styleFrom(
//                         backgroundColor: Color.fromARGB(255, 185, 43, 43)),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: SizedBox(
//                   height: ekranGenisligi / 10,
//                   child: TextButton(
//                     onPressed: () {
//                       print("Yorum Yapıldı");
//                     },
//                     child: Yazi("Yorum Yap", ekranGenisligi / 25),
//                     style: TextButton.styleFrom(
//                         backgroundColor: Color.fromARGB(255, 129, 29, 62)),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.all(ekranYuksekligi / 100),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Mantı - Tülay Gürler Tarifi",
//                   style: TextStyle(
//                     color: Colors.deepOrange,
//                     fontWeight: FontWeight.bold,
//                     fontSize: ekranGenisligi / 25,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Yazi("Izgara Üzerinde Pişirime Uygun", ekranGenisligi / 40),
//                     Spacer(),
//                     Yazi("26 Aralık", ekranGenisligi / 40),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           Yazi(
//               "Mantı hamurunuz esnek olursa, içini doldurma ve kapatma kısmında zorlanmazsınız. Hamurunuz çatlamaz ve yırtılmaz. Ayrıca, hamurunuzun kuruyup sertleşmemesi için kapatma işlemini mümkün olduğu kadar hızlı yapmaya çalışmanızı tavsiye ederiz.",
//               ekranGenisligi / 40)
//         ]),
//       ),
//     );
//   }
// }

// class Yazi extends StatelessWidget {
//   late String icerik;
//   late double yaziBoyut;
//   Yazi(this.icerik, this.yaziBoyut);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       icerik,
//       style: TextStyle(fontSize: yaziBoyut),
//     );
//   }
// }
