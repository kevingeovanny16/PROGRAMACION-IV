import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bienvenido a MediHuella',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF263238),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Consulta la información y cuidados de tu mascota.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 28),

            Card(
              elevation: 2,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFFE8F3FF),
                  child: FaIcon(
                    FontAwesomeIcons.syringe,
                    color: Color(0xFF3976B8),
                    size: 20,
                  ),
                ),
                title: const Text(
                  'Vacunas',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text('Historial y próximas vacunas'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(context, '/vacunas');
                },
              ),
            ),

            const SizedBox(height: 12),

            Card(
              elevation: 2,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFFF2EAFB),
                  child: FaIcon(
                    FontAwesomeIcons.stethoscope,
                    color: Color(0xFF7955A5),
                    size: 20,
                  ),
                ),
                title: const Text(
                  'Controles veterinarios',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text('Consultas, chequeos y seguimiento'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(context, '/controles');
                },
              ),
            ),

            const SizedBox(height: 12),

            Card(
              elevation: 2,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFFDDEFEA),
                  child: FaIcon(
                    FontAwesomeIcons.dog,
                    color: Color(0xFF2E7D6E),
                    size: 20,
                  ),
                ),
                title: const Text(
                  'Perfil de Max',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text('Datos generales de la mascota'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(context, '/perfil');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
