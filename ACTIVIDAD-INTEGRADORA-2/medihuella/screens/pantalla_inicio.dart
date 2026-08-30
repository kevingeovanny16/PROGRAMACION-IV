import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medihuella/widgets/tarjeta_acceso.dart';
import 'package:medihuella/widgets/tarjeta_mascota.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D6E),
        foregroundColor: Colors.white,
        title: const Row(
          children: [
            FaIcon(FontAwesomeIcons.paw, size: 22),
            SizedBox(width: 10),
            Text('MediHuella', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hola, Max 🐾',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF263238),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Mantén al día la salud y los cuidados de tu mascota.',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              const SizedBox(height: 20),

              const TarjetaMascota(),

              const SizedBox(height: 26),

              const Text(
                'Salud y cuidados',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              TarjetaAcceso(
                icono: FontAwesomeIcons.syringe,
                colorIcono: const Color(0xFF3976B8),
                colorFondo: const Color(0xFFE8F3FF),
                titulo: 'Vacunas',
                descripcion: 'Historial y próximas vacunas',
                alPresionar: () {
                  Navigator.pushNamed(context, '/vacunas');
                },
              ),

              const SizedBox(height: 10),

              TarjetaAcceso(
                icono: FontAwesomeIcons.stethoscope,
                colorIcono: const Color(0xFF7955A5),
                colorFondo: const Color(0xFFF2EAFB),
                titulo: 'Controles veterinarios',
                descripcion: 'Consultas, chequeos y seguimiento',
                alPresionar: () {
                  Navigator.pushNamed(context, '/controles');
                },
              ),

              const SizedBox(height: 10),

              TarjetaAcceso(
                icono: FontAwesomeIcons.dog,
                colorIcono: const Color(0xFF2E7D6E),
                colorFondo: const Color(0xFFDDEFEA),
                titulo: 'Perfil de Max',
                descripcion: 'Información general de la mascota',
                alPresionar: () {
                  Navigator.pushNamed(context, '/perfil');
                },
              ),

              const SizedBox(height: 24),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAF5F2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.favorite, color: Color(0xFF2E7D6E)),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Max se encuentra estable. Continúa manteniendo sus controles al día.',
                        style: TextStyle(color: Color(0xFF36554F)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
