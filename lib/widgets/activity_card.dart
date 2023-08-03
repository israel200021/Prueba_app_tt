// import 'package:flutter/material.dart';

// class ActivityCard extends StatefulWidget {
//   final String imagePath;
//   final String sabiasQueText;
//   final String title;
//   final IconData icon1;
//   final Color color1;

//   const ActivityCard({
//     super.key,
//     required this.imagePath,
//     required this.sabiasQueText,
//     required this.title,
//     required this.icon1,
//     required this.color1,
//   });

//   @override
//   // ignore: library_private_types_in_public_api
//   _ActivityCardState createState() => _ActivityCardState();
// }

// class _ActivityCardState extends State<ActivityCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text(
//           widget.title,
//           style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 16),
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: 400,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(8.0),
//             child: Image.asset(
//               widget.imagePath,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         const SizedBox(height: 16),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Sabías que',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               widget.sabiasQueText,
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.6),
//                 spreadRadius: 2,
//                 blurRadius: 4,
//                 offset: const Offset(0, 2),
//               ),
//             ],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               WaterGlass(icon: widget.icon1, color: widget.color1),
//               const SizedBox(width: 16),
//               WaterGlass(icon: widget.icon1, color: widget.color1),
//               const SizedBox(width: 16),
//               WaterGlass(icon: widget.icon1, color: widget.color1),
//               const SizedBox(width: 16),
//               WaterGlass(icon: widget.icon1, color: widget.color1),
//               const SizedBox(width: 16),
//               WaterGlass(icon: widget.icon1, color: widget.color1),

//               // Puedes agregar más WaterGlass aquí con otros íconos y colores
//             ],
//           ),
//         ),
//         const SizedBox(height: 16),
//         ElevatedButton(
//           onPressed: () {
//             // Acción al hacer clic en el botón de insertar
//           },
//           child: const Text('Insertar'),
//         ),
//       ],
//     );
//   }
// }

// class WaterGlass extends StatefulWidget {
//   final IconData icon;
//   final Color color;

//   WaterGlass({required this.icon, required this.color});

//   @override
//   _WaterGlassState createState() => _WaterGlassState();
// }

// class _WaterGlassState extends State<WaterGlass> {
//   bool isFilled = false;

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatefulWidget {
  final String imagePath;
  final String sabiasQueText;
  final String title;
  final IconData icon1;
  final Color color1;
  final double maxConsumed;

  const ActivityCard({
    Key? key,
    required this.imagePath,
    required this.sabiasQueText,
    required this.title,
    required this.icon1,
    required this.color1,
    required this.maxConsumed,
  }) : super(key: key);

  @override
  _ActivityCardState createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sabías que',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.sabiasQueText,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
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
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Iconos(icon: widget.icon1, color: widget.color1),
                      ),
                  ],
                ),
                Text('${widget.maxConsumed.toStringAsFixed(2)} lt'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () async {
            double aguaConsumida = 2;
            String fechaActual = DateTime.now().toIso8601String();

            // Obtener una referencia a la base de datos en tiempo real
            final DatabaseReference dbRef = FirebaseDatabase.instance.ref();

            // Crear una nueva entrada en la base de datos en el nodo "registroActividades"
            try {
              await dbRef.child('registroActividades').push().set({
                'cantidad': aguaConsumida,
                'fecha':
                    fechaActual, // Cambiado temporalmente para identificar la entrada sin autenticación
                'tipo': 'agua',
              });
              print('Datos de agua consumida almacenados en la base de datos.');
            } catch (error) {
              print('Error al almacenar los datos: $error');
            }
          },
          child: const Text('Insertar'),
        ),
      ],
    );
  }
}

class Iconos extends StatefulWidget {
  final IconData icon;
  final Color color;

  Iconos({required this.icon, required this.color});

  @override
  _IconosState createState() => _IconosState();
}

class _IconosState extends State<Iconos> {
  bool isFilled = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFilled ? widget.icon : widget.icon,
        color:
            isFilled ? const Color.fromARGB(255, 193, 194, 196) : widget.color,
      ),
      onPressed: () {
        setState(() {
          isFilled = !isFilled;
        });
      },
    );
  }
}
