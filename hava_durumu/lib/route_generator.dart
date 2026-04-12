import 'package:flutter/material.dart';
import 'package:hava_durumu/hava_durumu.dart';
import 'package:hava_durumu/hava_durumu_detay.dart';
import 'package:hava_durumu/hava_durumu_listesi.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => HavaDurumuListesi());
      case "/havaDurumuDetay":
        final arg = settings.arguments;
        return MaterialPageRoute(
          builder: (context) => HavaDurumuDetay(
            havaDurumu: arg is HavaDurumu ? arg : null,
          ),
        );
      default:
        return null;
    }
  }
}
