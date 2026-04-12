import 'package:flutter/material.dart';
import 'package:hava_durumu/hava_durumu.dart';
import 'package:hava_durumu/hava_durumu_listesi.dart';
import 'package:hava_durumu/route_generator.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hava Durumu App",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.pink,
        ),
        body: HavaDurumuListesi(),
        ),
     onGenerateRoute: RouteGenerator.routeGenerator,
      );
  }
}