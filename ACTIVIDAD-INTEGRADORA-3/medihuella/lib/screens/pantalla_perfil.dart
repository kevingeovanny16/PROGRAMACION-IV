import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import 'package:medihuella/providers/proveedor_mascota.dart';
import 'package:medihuella/widgets/logo_medihuella.dart';

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  Future<void> seleccionarFoto(BuildContext context) async {
    final ImagePicker selectorImagen = ImagePicker();

    final XFile? imagenSeleccionada =
        await selectorImagen.pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
    );

    if (imagenSeleccionada == null) {
      return;
    }

    if (!context.mounted) {
      return;
    }

    context
        .read<ProveedorMascota>()
        .actualizarFoto(imagenSeleccionada.path);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Foto de Max actualizada correctamente',
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void mostrarDialogoEditarDatos(BuildContext context) {
    final proveedorMascota =
        context.read<ProveedorMascota>();

    String nuevoPeso =
        proveedorMascota.peso.replaceAll(' kg', '');

    String nuevoEstado =
        proveedorMascota.estadoSalud;

    showDialog(
      context: context,
      builder: (contextoDialogo) {
        return StatefulBuilder(
          builder: (
            context,
            actualizarDialogo,
          ) {
            return AlertDialog(
              title: const Row(
                children: [
                  Icon(
                    Icons.edit_outlined,
                    color: Color(0xFF2E7D6E),
                  ),
                  SizedBox(width: 10),
                  Text('Editar datos de Max'),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    initialValue: nuevoPeso,
                    keyboardType:
                        const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Peso',
                      suffixText: 'kg',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      nuevoPeso = valor.trim();
                    },
                  ),

                  const SizedBox(height: 18),

                  DropdownButtonFormField<String>(
                    value: nuevoEstado,
                    decoration: const InputDecoration(
                      labelText: 'Estado de salud',
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'Estable',
                        child: Text('Estable'),
                      ),
                      DropdownMenuItem(
                        value: 'En observación',
                        child: Text('En observación'),
                      ),
                      DropdownMenuItem(
                        value: 'Requiere control',
                        child: Text('Requiere control'),
                      ),
                    ],
                    onChanged: (valor) {
                      if (valor == null) {
                        return;
                      }

                      actualizarDialogo(() {
                        nuevoEstado = valor;
                      });
                    },
                  ),
                ],
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
                    if (nuevoPeso.isEmpty) {
                      return;
                    }

                    context
                        .read<ProveedorMascota>()
                        .actualizarDatos(
                          peso: nuevoPeso,
                          estadoSalud: nuevoEstado,
                        );

                    Navigator.pop(contextoDialogo);

                    ScaffoldMessenger.of(context)
                        .showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Datos de Max actualizados correctamente',
                        ),
                      ),
                    );
                  },
                  child: const Text('Guardar'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget crearTarjetaDato({
    required IconData icono,
    required String titulo,
    required String valor,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor:
                  const Color(0xFFDDEFEA),
              child: Icon(
                icono,
                color: const Color(0xFF2E7D6E),
                size: 22,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    valor,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D6E),
        foregroundColor: Colors.white,
        title: const Text(
          'Perfil de Max',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Consumer<ProveedorMascota>(
        builder: (
          context,
          proveedorMascota,
          child,
        ) {
          return ListView(
            padding: const EdgeInsets.all(18),
            children: [
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      if (proveedorMascota.tieneFoto)
                        CircleAvatar(
                          radius: 55,
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
                          radius: 55,
                          backgroundColor:
                              Color(0xFFDDEFEA),
                          child: FaIcon(
                            FontAwesomeIcons.dog,
                            size: 55,
                            color: Color(0xFF2E7D6E),
                          ),
                        ),

                      const SizedBox(height: 12),

                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 10,
                        runSpacing: 8,
                        children: [
                          OutlinedButton.icon(
                            onPressed: () {
                              seleccionarFoto(context);
                            },
                            icon: const Icon(
                              Icons.photo_library_outlined,
                            ),
                            label: Text(
                              proveedorMascota.tieneFoto
                                  ? 'Cambiar foto'
                                  : 'Agregar foto',
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              mostrarDialogoEditarDatos(
                                context,
                              );
                            },
                            icon: const Icon(
                              Icons.edit_outlined,
                            ),
                            label: const Text(
                              'Editar datos',
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      const Text(
                        'Max',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      const Text(
                        'Golden Retriever',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                        ),
                      ),

                      const SizedBox(height: 12),

                      Container(
                        padding:
                            const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color:
                              const Color(0xFFDDEFEA),
                          borderRadius:
                              BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.favorite,
                              color:
                                  Color(0xFF2E7D6E),
                              size: 18,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              proveedorMascota
                                  .estadoSalud,
                              style: const TextStyle(
                                color:
                                    Color(0xFF2E7D6E),
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                'Información general',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              crearTarjetaDato(
                icono: Icons.pets,
                titulo: 'Especie',
                valor: 'Perro',
              ),

              crearTarjetaDato(
                icono: Icons.male,
                titulo: 'Sexo',
                valor: 'Macho',
              ),

              crearTarjetaDato(
                icono: Icons.cake_outlined,
                titulo: 'Edad',
                valor: '2 años',
              ),

              crearTarjetaDato(
                icono:
                    Icons.monitor_weight_outlined,
                titulo: 'Peso',
                valor: proveedorMascota.peso,
              ),

              crearTarjetaDato(
                icono: Icons.badge_outlined,
                titulo: 'Raza',
                valor: 'Golden Retriever',
              ),

              const Divider(height: 35),

              const Text(
                'Ficha de salud',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAF5F2),
                  borderRadius:
                      BorderRadius.circular(16),
                ),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.badge_outlined,
                          color:
                              Color(0xFF2E7D6E),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Ficha MediHuella: MH-001',
                            style: TextStyle(
                              fontWeight:
                                  FontWeight.bold,
                              color:
                                  Color(0xFF36554F),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Divider(),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons
                              .health_and_safety_outlined,
                          color:
                              Color(0xFF2E7D6E),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Vacunas y controles veterinarios registrados en MediHuella.',
                            style: TextStyle(
                              color:
                                  Color(0xFF36554F),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(16),
                ),
                child: const Row(
                  children: [
                    LogoMediHuella(
                      tamano: 65,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MediHuella',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:
                                  FontWeight.bold,
                              color:
                                  Color(0xFF2E7D6E),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Salud y cuidados para tu mascota.',
                            style: TextStyle(
                              color:
                                  Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}