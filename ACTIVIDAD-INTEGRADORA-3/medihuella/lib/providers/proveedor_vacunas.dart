import 'package:flutter/material.dart';
import 'package:medihuella/data/datos_vacunas.dart';
import 'package:medihuella/models/vacuna.dart';

class ProveedorVacunas extends ChangeNotifier {
  final List<Vacuna> _vacunas =
      List<Vacuna>.from(vacunasIniciales);

  List<Vacuna> get vacunas => List.unmodifiable(_vacunas);

  int get cantidadVacunas => _vacunas.length;

  Vacuna get siguienteVacuna => proximaVacuna;

  Vacuna? get ultimaVacuna {
    if (_vacunas.isEmpty) {
      return null;
    }

    final List<Vacuna> vacunasOrdenadas =
        List<Vacuna>.from(_vacunas);

    vacunasOrdenadas.sort(
      (a, b) => b.fecha.compareTo(a.fecha),
    );

    return vacunasOrdenadas.first;
  }

  void agregarVacuna(String nombre) {
    final Vacuna nuevaVacuna = Vacuna(
      nombre: nombre,
      fecha: DateTime.now(),
      descripcion: 'Vacuna registrada desde MediHuella.',
      aplicada: true,
    );

    _vacunas.add(nuevaVacuna);

    notifyListeners();
  }
    void eliminarVacuna(Vacuna vacuna) {
    _vacunas.remove(vacuna);

    notifyListeners();
  }
}