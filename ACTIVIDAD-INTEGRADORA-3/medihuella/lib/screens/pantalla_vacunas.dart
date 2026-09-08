import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medihuella/widgets/tarjeta_vacuna.dart';

class PantallaVacunas extends StatefulWidget {
  const PantallaVacunas({super.key});

  @override
  State<PantallaVacunas> createState() => _EstadoPantallaVacunas();
}

class _EstadoPantallaVacunas extends State<PantallaVacunas> {
  final List<Map<String, dynamic>> vacunasAplicadas = [
    {
      'nombre': 'Rabia',
      'fecha': DateTime(2026, 2, 15),
      'descripcion': 'Vacuna antirrábica anual.',
    },
    {
      'nombre': 'Múltiple canina',
      'fecha': DateTime(2025, 11, 10),
      'descripcion': 'Protección contra enfermedades virales comunes.',
    },
  ];

  void mostrarDialogoAgregarVacuna() {
    String nombreVacuna = '';

    showDialog(
      context: context,
      builder: (contextoDialogo) {
        return AlertDialog(
          title: const Row(
            children: [
              FaIcon(
                FontAwesomeIcons.syringe,
                color: Color(0xFF2E7D6E),
                size: 22,
              ),
              SizedBox(width: 10),
              Text('Registrar vacuna'),
            ],
          ),
          content: TextField(
            decoration: const InputDecoration(
              labelText: 'Nombre de la vacuna',
              hintText: 'Ejemplo: Bordetella',
              border: OutlineInputBorder(),
            ),
            textCapitalization: TextCapitalization.sentences,
            onChanged: (valor) {
              nombreVacuna = valor.trim();
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(contextoDialogo);
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                if (nombreVacuna.isEmpty) {
                  return;
                }

                setState(() {
                  vacunasAplicadas.add({
                    'nombre': nombreVacuna,
                    'fecha': DateTime.now(),
                    'descripcion':
                        'Vacuna registrada desde MediHuella.',
                  });
                });

                Navigator.pop(contextoDialogo);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      '$nombreVacuna registrada correctamente',
                    ),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: const Text('Registrar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D6E),
        foregroundColor: Colors.white,
        title: const Text(
          'Vacunas',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F3FF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: FaIcon(
                    FontAwesomeIcons.syringe,
                    color: Color(0xFF3976B8),
                    size: 24,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Control de vacunación',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Consulta las vacunas aplicadas y los próximos refuerzos de Max.',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          Row(
            children: [
              const Expanded(
                child: Text(
                  'Historial de vacunas',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFDDEFEA),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '${vacunasAplicadas.length}',
                  style: const TextStyle(
                    color: Color(0xFF2E7D6E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          ...vacunasAplicadas.map(
            (vacuna) => TarjetaVacuna(
              nombre: vacuna['nombre'],
              fecha: vacuna['fecha'],
              descripcion: vacuna['descripcion'],
              aplicada: true,
            ),
          ),

          const Divider(height: 32),

          const Text(
            'Próxima vacuna',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          TarjetaVacuna(
            nombre: 'Refuerzo anual',
            fecha: DateTime(2027, 2, 15),
            descripcion:
                'Próximo refuerzo de vacunación programado.',
            aplicada: false,
          ),

          const SizedBox(height: 15),

          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: const Color(0xFFEAF5F2),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Color(0xFF2E7D6E),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Mantener las vacunas al día ayuda a proteger la salud de tu mascota.',
                    style: TextStyle(
                      color: Color(0xFF36554F),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 80),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF2E7D6E),
        foregroundColor: Colors.white,
        onPressed: mostrarDialogoAgregarVacuna,
        icon: const Icon(Icons.add),
        label: const Text('Agregar vacuna'),
      ),
    );
  }
}