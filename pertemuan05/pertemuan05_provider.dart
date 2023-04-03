import 'package:flutter/widgets.dart';

class Pertemuan05Provider extends ChangeNotifier {
  bool _diSekolah = false;
  bool _diPraktik = true;
  bool _diKursus = false;

  bool get statusSekolah => _diSekolah;
  bool get statusPraktik => _diPraktik;
  bool get statusKursus => _diKursus;

  set setSekolah(val) {
    _diSekolah = val;
    notifyListeners();
  }

  set setPraktik(val) {
    _diPraktik = val;
    notifyListeners();
  }

  set setKursus(val) {
    _diKursus = val;
    notifyListeners();
  }
}
