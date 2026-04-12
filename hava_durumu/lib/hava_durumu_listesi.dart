import 'package:flutter/material.dart';
import 'package:hava_durumu/data/strings.dart';
import 'package:hava_durumu/hava_durumu.dart';
import 'package:hava_durumu/hava_durumu_item.dart';
import 'package:hava_durumu/weather_assets.dart';

class HavaDurumuListesi extends StatelessWidget {
  late List<HavaDurumu> tumHavaDurumu;
  HavaDurumuListesi() {
    tumHavaDurumu = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return HavaDurumuItem(listelenenHavaDurumu: tumHavaDurumu[index],);
        },
        itemCount: tumHavaDurumu.length,
      ),
    );
  }

  List<HavaDurumu> veriKaynaginiHazirla() {
    List<HavaDurumu> gecici = [];
    for (int i = 0; i < Strings.HAVA_DURUMU.length; i++) {
      var sehirAdi = Strings.SEHIR_ADLARI[i];
      var havaDurumu = Strings.HAVA_DURUMU[i];
      var sehirSicakligi = int.parse(Strings.HAVA_SICAKLIGI[i]);
      final resimTemel = weatherImageBaseName(Strings.HAVA_DURUMU[i]);
      var sehirKucukResim = '$resimTemel.png';
      var sehirBuyukResim = '${resimTemel}_buyuk.png';

      HavaDurumu eklenecekHavaDurumu = HavaDurumu(
        sehirAdi,
        havaDurumu,
        sehirSicakligi,
        sehirKucukResim,
        sehirBuyukResim,
      );
      gecici.add(eklenecekHavaDurumu);
    }

    return gecici;
  }
}
