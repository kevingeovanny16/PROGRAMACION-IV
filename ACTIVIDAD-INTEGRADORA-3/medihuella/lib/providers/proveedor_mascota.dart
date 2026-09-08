import 'package:flutter/material.dart';

class ProveedorMascota extends ChangeNotifier {
  String? _rutaFoto;
  String _peso = '27.5 kg';
  String _estadoSalud = 'Estable';

  String? get rutaFoto => _rutaFoto;

  bool get tieneFoto => _rutaFoto != null;

  String get peso => _peso;

  String get estadoSalud => _estadoSalud;

  void actualizarFoto(String nuevaRuta) {
    _rutaFoto = nuevaRuta;
    notifyListeners();
  }

  void actualizarDatos({
    required String peso,
    required String estadoSalud,
  }) {
    final String pesoLimpio = peso.trim();

    if (pesoLimpio.toLowerCase().endsWith('kg')) {
      _peso = pesoLimpio;
    } else {
      _peso = '$pesoLimpio kg';
    }

    _estadoSalud = estadoSalud;

    notifyListeners();
  }
}