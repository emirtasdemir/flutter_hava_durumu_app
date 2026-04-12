import 'package:flutter/material.dart';
import 'package:hava_durumu/hava_durumu.dart';
import 'package:hava_durumu/weather_assets.dart';

class HavaDurumuItem extends StatelessWidget {
  final HavaDurumu listelenenHavaDurumu;
  const HavaDurumuItem({required this.listelenenHavaDurumu, super.key});
  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsetsGeometry.all(8),
      child: Card(
        elevation: 4,
        child: Padding(padding: const EdgeInsets.all(8),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/havaDurumuDetay',
              arguments: listelenenHavaDurumu,
            );
          },
          leading: SizedBox(
            width: 56,
            height: 56,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'images/${listelenenHavaDurumu.sehirKucukResim}',
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => ColoredBox(
                  color: Colors.blue.shade50,
                  child: Icon(
                    weatherIcon(listelenenHavaDurumu.havaDurumu),
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
          ),
          title: Text(
            listelenenHavaDurumu.sehirAdi,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: myTextStyle.titleLarge,
          ),
          subtitle: Text(
            '${listelenenHavaDurumu.sehirSicakligi}°C',
            style: myTextStyle.bodyMedium,
          ),
          trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink,),
        ),),
      ),
    );
  }
}
