import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MediHuellaApp());
}

class MediHuellaApp extends StatelessWidget {
  const MediHuellaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediHuella',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D6E),
        ),
        useMaterial3: true,
      ),
      home: const InicioPage(),
    );
  }
}

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  bool mostrarCuidados = false;

  void cambiarVisibilidadCuidados() {
    setState(() {
      mostrarCuidados = !mostrarCuidados;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D6E),
        foregroundColor: Colors.white,
        title: const Row(
          children: [
            FaIcon(
              FontAwesomeIcons.paw,
              size: 22,
            ),
            SizedBox(width: 10),
            Text(
              'MediHuella',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hola 👋',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Información de tu mascota',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF263238),
              ),
            ),
           
            
            const SizedBox(height: 24),



const SizedBox(height: 20),
            // Tarjeta principal de la mascota
            Card(
              elevation: 3,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: const Color(0xFFDDEFEA),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Center(
                            child: FaIcon(
                              FontAwesomeIcons.dog,
                              size: 38,
                              color: Color(0xFF2E7D6E),
                            ),
                          ),
                        ),
                        const SizedBox(width: 18),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Max',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF263238),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Golden Retriever',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Macho',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    const Divider(),
                    const SizedBox(height: 14),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.cakeCandles,
                              color: Color(0xFF2E7D6E),
                              size: 22,
                            ),
                            SizedBox(height: 8),
                            Text(
                              '2 años',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Edad',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.weightScale,
                              color: Color(0xFF2E7D6E),
                              size: 22,
                            ),
                            SizedBox(height: 8),
                            Text(
                              '27.5 kg',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Peso',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.heartPulse,
                              color: Color(0xFF2E7D6E),
                              size: 22,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Estable',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Estado',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Salud y cuidados',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Color(0xFF263238),
              ),
            ),

            const SizedBox(height: 14),

            Card(
              elevation: 1,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8F3FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.syringe,
                          color: Color(0xFF3976B8),
                          size: 22,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Vacunación',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Registro de vacunas de tu mascota',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right,
                      color: Colors.black38,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              elevation: 1,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF2DC),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.shieldDog,
                          color: Color(0xFFC98723),
                          size: 22,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Desparasitación',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Seguimiento de controles periódicos',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right,
                      color: Colors.black38,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              elevation: 1,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2EAFB),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.notesMedical,
                          color: Color(0xFF7955A5),
                          size: 22,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Controles veterinarios',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Consultas, recetas y observaciones',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right,
                      color: Colors.black38,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
  width: double.infinity,
  child: ElevatedButton.icon(
    onPressed: cambiarVisibilidadCuidados,
    icon: FaIcon(
      mostrarCuidados
          ? FontAwesomeIcons.eyeSlash
          : FontAwesomeIcons.calendarCheck,
      size: 18,
    ),
    label: Text(
      mostrarCuidados
          ? 'Ocultar próximos cuidados'
          : 'Ver próximos cuidados',
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF2E7D6E),
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
),

if (mostrarCuidados) ...[
  const SizedBox(height: 18),

  Card(
    elevation: 2,
    color: const Color(0xFFEAF5F2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              FaIcon(
                FontAwesomeIcons.calendarDays,
                color: Color(0xFF2E7D6E),
                size: 21,
              ),
              SizedBox(width: 10),
              Text(
                'Próximos cuidados',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF263238),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),

          const Row(
            children: [
              FaIcon(
                FontAwesomeIcons.syringe,
                color: Color(0xFF3976B8),
                size: 19,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Próxima vacuna',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Refuerzo anual pendiente',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 10),

          const Row(
            children: [
              FaIcon(
                FontAwesomeIcons.shieldDog,
                color: Color(0xFFC98723),
                size: 19,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Desparasitación',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Próximo control en 30 días',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 10),

          const Row(
            children: [
              FaIcon(
                FontAwesomeIcons.stethoscope,
                color: Color(0xFF7955A5),
                size: 19,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Control veterinario',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Chequeo general programado',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
],
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}