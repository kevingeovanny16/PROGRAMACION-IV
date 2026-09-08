import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'package:medihuella/providers/proveedor_mascota.dart';

class TarjetaMascota extends StatelessWidget {
  const TarjetaMascota({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProveedorMascota>(
      builder: (
        context,
        proveedorMascota,
        child,
      ) {
        return Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                if (proveedorMascota.tieneFoto)
                  CircleAvatar(
                    radius: 38,
                    backgroundColor:
                        const Color(0xFFDDEFEA),
                    backgroundImage: FileImage(
                      File(
                        proveedorMascota.rutaFoto!,
                      ),
                    ),
                  )
                else
                  const CircleAvatar(
                    radius: 38,
                    backgroundColor:
                        Color(0xFFDDEFEA),
                    child: FaIcon(
                      FontAwesomeIcons.dog,
                      size: 38,
                      color: Color(0xFF2E7D6E),
                    ),
                  ),

                const SizedBox(width: 18),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Max',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 4),

                      const Text(
                        'Golden Retriever',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Row(
                        children: [
                          const Icon(
                            Icons.monitor_weight_outlined,
                            size: 18,
                            color: Color(0xFF2E7D6E),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            proveedorMascota.peso,
                          ),
                          const SizedBox(width: 16),
                          const Icon(
                            Icons.cake_outlined,
                            size: 18,
                            color: Color(0xFF2E7D6E),
                          ),
                          const SizedBox(width: 5),
                          const Text('2 años'),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Container(
                        padding:
                            const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color:
                              const Color(0xFFDDEFEA),
                          borderRadius:
                              BorderRadius.circular(20),
                        ),
                        child: Text(
                          proveedorMascota.estadoSalud,
                          style: const TextStyle(
                            color: Color(0xFF2E7D6E),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}