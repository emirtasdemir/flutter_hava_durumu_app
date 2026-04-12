class HavaDurumu {
  List gecici = [];
  final String _sehirAdi;
  final String _havaDurumu;
  final int _sehirSicakligi;
  final String _sehirKucukResim;
  final String _sehirBuyukResim;

  get sehirAdi => this._sehirAdi;

  get havaDurumu => this._havaDurumu;
  
  get sehirSicakligi => this._sehirSicakligi;

  get sehirKucukResim => this._sehirKucukResim;

  get sehirBuyukResim => this._sehirBuyukResim;


  HavaDurumu(this._sehirAdi, this._havaDurumu, this._sehirSicakligi, this._sehirKucukResim, this._sehirBuyukResim);
}
