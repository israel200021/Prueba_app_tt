import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

// TODO: borarr esta pantalla
class PersonalDataScreen extends StatelessWidget {
  const PersonalDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Datos Personales')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Título de la pantalla',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/gota.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sabías que',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Este es un párrafo con texto donde puedes escribir más detalles sobre los datos personales o lo que desees.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WaterGlass(),
                  const SizedBox(width: 16),
                  WaterGlass(),
                  const SizedBox(width: 16),
                  WaterGlass(),
                  const SizedBox(width: 16),
                  WaterGlass(),
                  const SizedBox(width: 16),
                  WaterGlass(),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Acción al hacer clic en el botón de insertar
              },
              child: const Text('Insertar'),
            ),
          ],
        ),
      ),
    );
  }
}

class WaterGlass extends StatefulWidget {
  @override
  _WaterGlassState createState() => _WaterGlassState();
}

class _WaterGlassState extends State<WaterGlass> {
  bool isFilled = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFilled
            ? MaterialCommunityIcons.cup_water
            : MaterialCommunityIcons.cup_off,
        color: isFilled ? Colors.blue : Colors.grey,
      ),
      onPressed: () {
        setState(() {
          isFilled = !isFilled;
        });
      },
    );
  }
}
