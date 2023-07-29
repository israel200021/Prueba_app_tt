import 'package:flutter/material.dart';
import 'package:flutter_application_tt/widgets/activity_card.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HorasDormidasScreen extends StatelessWidget {
  const HorasDormidasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Pantalla'),
      ),
      body: SingleChildScrollView(
        // Utiliza SingleChildScrollView para evitar un tamaño infinito
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ActivityCard(
                title: 'Horas Dormidas',
                sabiasQueText:
                    'Este es un párrafo con texto donde puedes escribir más detalles sobre los datos personales o lo que desees.',
                imagePath: 'assets/horasDormidas.png',
                icon1: Ionicons.moon,
                color1: Color.fromARGB(255, 239, 212, 40),
              ),
              // Otros widgets de tu pantalla
            ],
          ),
        ),
      ),
    );
  }
}
