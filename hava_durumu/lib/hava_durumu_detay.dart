import 'package:flutter/material.dart';
import 'package:hava_durumu/hava_durumu.dart';
import 'package:hava_durumu/weather_assets.dart';

class HavaDurumuDetay extends StatefulWidget {
  final HavaDurumu? havaDurumu;

  const HavaDurumuDetay({super.key, this.havaDurumu});

  @override
  State<HavaDurumuDetay> createState() => _HavaDurumuDetayState();
}

class _HavaDurumuDetayState extends State<HavaDurumuDetay> {
  @override
  Widget build(BuildContext context) {
    final h = widget.havaDurumu;
    if (h == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Hata')),
        body: const Center(child: Text('Şehir bilgisi bulunamadı.')),
      );
    }

    final buyukYol = 'images/${h.sehirBuyukResim}';

    return Scaffold(
      appBar: AppBar(
        title: Text(h.sehirAdi),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  buyukYol,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => ColoredBox(
                    color: Colors.blueGrey.shade100,
                    child: Icon(
                      weatherIcon(h.havaDurumu),
                      size: 80,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              h.havaDurumu,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              '${h.sehirSicakligi}°C',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
