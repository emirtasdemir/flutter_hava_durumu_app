import 'package:flutter/material.dart';

/// Görsel dosya adlarında Türkçe karakter ve boşluk kullanılmaz; örn. `images/acik.png`.
String weatherImageBaseName(String havaDurumuEtiketi) {
  switch (havaDurumuEtiketi) {
    case 'Açık':
      return 'acik';
    case 'Parçalı bulutlu':
      return 'parcali_bulutlu';
    case 'Çok bulutlu':
      return 'cok_bulutlu';
    case 'Kapalı':
      return 'kapali';
    case 'Yağmurlu':
      return 'yagmurlu';
    default:
      return 'acik';
  }
}

IconData weatherIcon(String havaDurumuEtiketi) {
  switch (havaDurumuEtiketi) {
    case 'Açık':
      return Icons.wb_sunny;
    case 'Parçalı bulutlu':
      return Icons.cloud_queue;
    case 'Çok bulutlu':
      return Icons.cloud;
    case 'Kapalı':
      return Icons.cloud_off;
    case 'Yağmurlu':
      return Icons.umbrella;
    default:
      return Icons.wb_cloudy;
  }
}
