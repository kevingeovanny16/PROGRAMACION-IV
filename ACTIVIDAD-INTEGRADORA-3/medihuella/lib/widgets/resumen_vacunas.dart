import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:medihuella/providers/proveedor_vacunas.dart';

class ResumenVacunas extends StatelessWidget {
  const ResumenVacunas({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProveedorVacunas>(
      builder: (context, proveedorVacunas, child) {
        final ultimaVacuna = proveedorVacunas.ultimaVacuna;

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(17),
          decoration: BoxDecoration(
            color: const Color(0xFFE8F3FF),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xFFD1E5F7),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.syringe,
                    color: Color(0xFF3976B8),
                    size: 21,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Resumen de vacunación',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263238),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),

              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: Text(
                        '${proveedorVacunas.cantidadVacunas}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3976B8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 13),
                  const Expanded(
                    child: Text(
                      'vacunas registradas',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              if (ultimaVacuna != null) ...[
                const SizedBox(height: 14),
                const Divider(),
                const SizedBox(height: 8),
                Text(
                  'Última vacuna registrada: ${ultimaVacuna.nombre}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF36554F),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Fecha: ${DateFormat('dd/MM/yyyy').format(ultimaVacuna.fecha)}',
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}