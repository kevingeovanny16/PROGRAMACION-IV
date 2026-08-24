# MediHuella

MediHuella es una aplicación móvil desarrollada con Flutter y Dart, orientada al registro y seguimiento de información relacionada con las mascotas.

Este proyecto se desarrollará progresivamente durante las actividades de la materia Desarrollo de Aplicaciones Móviles.

## Primera etapa

Durante esta primera etapa se ha realizado:

- Creación y configuración del proyecto Flutter.
- Ejecución del proyecto en un emulador Android.
- Creación de la identidad inicial de MediHuella.
- Personalización de colores y nombre de la aplicación.
- Instalación y utilización de un paquete externo.

## Tecnologías utilizadas

- Flutter
- Dart
- Visual Studio Code
- Android Studio
- Android Emulator
- GitHub
- `flutter_launcher_icons` para generar el icono de la aplicación Android.

## Paquete externo

Se incorporó el paquete:

`font_awesome_flutter`

La instalación se realizó mediante:

```bash
flutter pub add font_awesome_flutter
```

El paquete se utiliza actualmente para mostrar el ícono de huella que forma parte de la identidad visual de MediHuella.

## Objetivo del proyecto

El objetivo de MediHuella es evolucionar hasta convertirse en una aplicación que permita mantener organizada información importante relacionada con las mascotas, incluyendo:

- Datos generales.
- Peso.
- Vacunas.
- Desparasitación.
- Controles veterinarios.
- Recetas médicas.
- Próximos cuidados.

Las funcionalidades serán incorporadas progresivamente durante las siguientes etapas del proyecto.

## Pantalla principal

La pantalla principal de MediHuella presenta información básica de una mascota mediante una interfaz organizada en tarjetas.

Actualmente se muestran los siguientes datos de ejemplo:

- Nombre de la mascota.
- Raza.
- Sexo.
- Edad.
- Peso.
- Estado general.
- Accesos visuales a vacunación, desparasitación y controles veterinarios.

Los datos mostrados en esta primera versión son demostrativos y permitirán continuar desarrollando nuevas funcionalidades en las siguientes etapas del proyecto.

## Widgets utilizados

Para construir la pantalla principal se utilizaron widgets básicos de Flutter como:

- `MaterialApp`
- `Scaffold`
- `AppBar`
- `SingleChildScrollView`
- `Column`
- `Row`
- `Card`
- `Container`
- `Text`
- `Icon`
- `FaIcon`
- `Padding`
- `SizedBox`
- `Divider`

También se utilizaron colores personalizados para mantener una identidad visual propia de MediHuella.

## Interacción de la aplicación

La pantalla principal incluye un botón llamado **Ver próximos cuidados**.

Al presionar el botón se muestra información adicional relacionada con los próximos controles de la mascota, incluyendo:

- Próxima vacuna.
- Desparasitación.
- Control veterinario.

Para implementar esta interacción se utilizó un `StatefulWidget` junto con `setState`.

La variable `mostrarCuidados` permite controlar si la información adicional se encuentra visible u oculta.
Cuando se presiona nuevamente el botón, el contenido se oculta y el texto cambia a **Ocultar próximos cuidados** o **Ver próximos cuidados**, dependiendo del estado actual.

## Icono de la aplicación

Se personalizó el icono de MediHuella para identificar la aplicación dentro del dispositivo Android.

Para generar los diferentes tamaños requeridos por Android se utilizó el paquete:

`flutter_launcher_icons`

La imagen base utilizada se encuentra en:

`assets/icon/app_icon.png`

El icono combina una huella de mascota con un símbolo médico para representar el enfoque de MediHuella en el cuidado y seguimiento de la salud de las mascotas.

## Estado actual

MediHuella cuenta actualmente con una pantalla principal funcional que muestra la ficha básica de una mascota y diferentes opciones relacionadas con su salud y cuidados.

También dispone de una interacción mediante un botón que permite mostrar u ocultar los próximos cuidados de la mascota utilizando `StatefulWidget` y `setState`.

La aplicación se ejecuta correctamente en un emulador Android.

## Autor

Kevin Geovanny Minga Espinoza
