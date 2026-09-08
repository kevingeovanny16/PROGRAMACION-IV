import 'package:flutter/material.dart';

class ProveedorMascota extends ChangeNotifier {
  String? _rutaFoto;

  String? get rutaFoto => _rutaFoto;

  bool get tieneFoto => _rutaFoto != null;

  void actualizarFoto(String nuevaRuta) {
    _rutaFoto = nuevaRuta;
    notifyListeners();
  }
}