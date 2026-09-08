import 'package:medihuella/models/vacuna.dart';

final List<Vacuna> vacunasIniciales = [
  Vacuna(
    nombre: 'Rabia',
    fecha: DateTime(2026, 2, 15),
    descripcion: 'Vacuna antirrábica anual.',
    aplicada: true,
  ),
  Vacuna(
    nombre: 'Múltiple canina',
    fecha: DateTime(2025, 11, 10),
    descripcion: 'Protección contra enfermedades virales comunes.',
    aplicada: true,
  ),
];

final Vacuna proximaVacuna = Vacuna(
  nombre: 'Refuerzo anual',
  fecha: DateTime(2027, 2, 15),
  descripcion: 'Próximo refuerzo de vacunación programado.',
  aplicada: false,
);