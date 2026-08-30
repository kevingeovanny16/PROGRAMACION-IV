import 'package:flutter/material.dart';
import 'package:medihuella/screens/pantalla_inicio.dart';
import 'package:medihuella/screens/pantalla_vacunas.dart';
import 'package:medihuella/screens/pantalla_controles.dart';
import 'package:medihuella/screens/pantalla_perfil.dart';

void main() {
  runApp(const AplicacionMediHuella());
}

class AplicacionMediHuella extends StatelessWidget {
  const AplicacionMediHuella({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediHuella',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2E7D6E)),
        useMaterial3: true,
      ),
      initialRoute: '/inicio',
      routes: {
        '/inicio': (_) => const PantallaInicio(),
        '/vacunas': (_) => const PantallaVacunas(),
        '/controles': (_) => const PantallaControles(),
        '/perfil': (_) => const PantallaPerfil(),
      },
    );
  }
}
