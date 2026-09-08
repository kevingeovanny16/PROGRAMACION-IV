import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'package:medihuella/models/vacuna.dart';

class TarjetaVacuna extends StatelessWidget {
  final Vacuna vacuna;
  final VoidCallback? alEliminar;

  const TarjetaVacuna({
    super.key,
    required this.vacuna,
    this.alEliminar,
  });

  @override
  Widget build(BuildContext context) {
    final String fechaFormateada =
        DateFormat('dd/MM/yyyy').format(vacuna.fecha);

    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 23,
              backgroundColor: vacuna.aplicada
                  ? const Color(0xFFDDEFEA)
                  : const Color(0xFFFFF3D6),
              child: FaIcon(
                FontAwesomeIcons.syringe,
                size: 19,
                color: vacuna.aplicada
                    ? const Color(0xFF2E7D6E)
                    : const Color(0xFFD79018),
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          vacuna.nombre,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 9,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: vacuna.aplicada
                              ? const Color(0xFFDDEFEA)
                              : const Color(0xFFFFF3D6),
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                        child: Text(
                          vacuna.aplicada
                              ? 'Aplicada'
                              : 'Pendiente',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: vacuna.aplicada
                                ? const Color(0xFF2E7D6E)
                                : const Color(0xFFD79018),
                          ),
                        ),
                      ),

                      if (alEliminar != null) ...[
                        const SizedBox(width: 4),
                        IconButton(
                          tooltip: 'Eliminar vacuna',
                          onPressed: alEliminar,
                          icon: const Icon(
                            Icons.delete_outline,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ],
                  ),

                  const SizedBox(height: 6),

                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                        size: 17,
                        color: Colors.black54,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        fechaFormateada,
                        style: const TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 7),

                  Text(
                    vacuna.descripcion,
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}