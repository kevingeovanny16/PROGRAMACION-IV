import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class TarjetaControl extends StatelessWidget {
  final String titulo;
  final DateTime fecha;
  final String veterinario;
  final String descripcion;
  final bool realizado;

  const TarjetaControl({
    super.key,
    required this.titulo,
    required this.fecha,
    required this.veterinario,
    required this.descripcion,
    required this.realizado,
  });

  @override
  Widget build(BuildContext context) {
    final String fechaFormateada =
        DateFormat('dd/MM/yyyy').format(fecha);

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
              backgroundColor: realizado
                  ? const Color(0xFFF2EAFB)
                  : const Color(0xFFFFF3D6),
              child: FaIcon(
                FontAwesomeIcons.stethoscope,
                size: 19,
                color: realizado
                    ? const Color(0xFF7955A5)
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
                          titulo,
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
                          color: realizado
                              ? const Color(0xFFF2EAFB)
                              : const Color(0xFFFFF3D6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          realizado ? 'Realizado' : 'Pendiente',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: realizado
                                ? const Color(0xFF7955A5)
                                : const Color(0xFFD79018),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
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
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.person_outline,
                        size: 17,
                        color: Colors.black54,
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          veterinario,
                          style: const TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Text(
                    descripcion,
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