import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TarjetaVacuna extends StatelessWidget {
  final String nombre;
  final String fecha;
  final String descripcion;
  final bool aplicada;

  const TarjetaVacuna({
    super.key,
    required this.nombre,
    required this.fecha,
    required this.descripcion,
    required this.aplicada,
  });

  @override
  Widget build(BuildContext context) {
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
              backgroundColor: aplicada
                  ? const Color(0xFFDDEFEA)
                  : const Color(0xFFFFF3D6),
              child: FaIcon(
                FontAwesomeIcons.syringe,
                size: 19,
                color: aplicada
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
                          nombre,
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
                          color: aplicada
                              ? const Color(0xFFDDEFEA)
                              : const Color(0xFFFFF3D6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          aplicada ? 'Aplicada' : 'Pendiente',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: aplicada
                                ? const Color(0xFF2E7D6E)
                                : const Color(0xFFD79018),
                          ),
                        ),
                      ),
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
                        fecha,
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Text(
                    descripcion,
                    style: const TextStyle(color: Colors.black54),
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
