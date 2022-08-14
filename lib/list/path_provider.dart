// import 'package:flutter/material.dart';
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   }
//
//   Future<String> get pathfile async{
//     Directory urlPath=await getApplicationDocumentsDirectory();
//     return urlPath.path;
//   }
//   Future<File> get pathCreate async{
//     var dosya=await pathfile+"/lang.text";
//     debugPrint(dosya.toString());
//     return File(dosya);
//     Future<String> pathWrite(String oka) async{
//       var dosya= await pathCreate;
//       String a=dosya.writeAsString(oka);
//       return a;
//
//     Future<String> pathRead() async{
//       var dosya= await pathCreate;
//       String a=dosya.readAsString("");
//       return a;
//     }
//     String read="";
//     @override
//       void initState() {
//       pathCreate;
//       pathRead().then((value) {
//         read=value;)
//       };
//       super.initState();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Column(children: [
//       RaisedButton(onPressed: onPressed(){pathWrite("tm")},child: Text("tm"),),
//       RaisedButton(onPressed: onPressed(){pathWrite("tm")},child: Text("tm"),),
//     ],),);
//   }
// }
