import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TarjetaAcceso extends StatelessWidget {
  final FaIconData icono;
  final Color colorIcono;
  final Color colorFondo;
  final String titulo;
  final String descripcion;
  final VoidCallback alPresionar;

  const TarjetaAcceso({
    super.key,
    required this.icono,
    required this.colorIcono,
    required this.colorFondo,
    required this.titulo,
    required this.descripcion,
    required this.alPresionar,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: colorFondo,
          child: FaIcon(icono, color: colorIcono, size: 20),
        ),
        title: Text(
          titulo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(descripcion),
        trailing: const Icon(Icons.chevron_right),
        onTap: alPresionar,
      ),
    );
  }
}
