import 'package:flutter/material.dart';
import 'package:flutter_application_tt/widgets/activity_card.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class BeberAguaScreen extends StatelessWidget {
  const BeberAguaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Pantalla'),
      ),
      body: const SingleChildScrollView(
        // Utiliza SingleChildScrollView para evitar un tamaño infinito
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ActivityCard(
                  title: 'Cantidad de agua',
                  sabiasQueText:
                      'Este es un párrafo con texto donde puedes escribir más detalles sobre los datos personales o lo que desees.',
                  imagePath: 'assets/registrodeagua.png',
                  icon1: MaterialCommunityIcons.cup,
                  color1: Colors.blue,
                  maxConsumed: 2),

              // Otros widgets de tu pantalla
            ],
          ),
        ),
      ),
    );
  }
}
