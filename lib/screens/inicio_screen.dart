// import 'package:flutter/material.dart';

// import '../widgets/widgets.dart';

// class InicioScreen extends StatelessWidget {
//   const InicioScreen({super.key});

import 'package:fl_chart/fl_chart.dart';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Inicio'),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const SizedBox(height: 10),
//             const Padding(
//               padding: EdgeInsets.only(left: 15.0, top: 5.0),
//               child: Text(
//                 'Mi medición del día',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontFamily: 'Gudea',
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 const FadeInImage(
//                   image: AssetImage('assets/img1.jpg'),
//                   placeholder: AssetImage('assets/imgCarga.jpg'),
//                   width: 150,
//                   height: 150,
//                   fit: BoxFit.cover,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Antes de Comer',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontFamily: 'Gudea',
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Container(
//                           width: 10,
//                           height: 10,
//                           decoration: const BoxDecoration(
//                             // color: Colors.blue,
//                             shape: BoxShape.circle,
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         const Text(
//                           '80 mg/dL',
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontFamily: 'Gudea',
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     const Text(
//                       'Después de Comer',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontFamily: 'Gudea',
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Container(
//                           width: 10,
//                           height: 10,
//                           decoration: const BoxDecoration(
//                             color: Colors.red,
//                             shape: BoxShape.circle,
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         const Text(
//                           '95 mg/dL',
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontFamily: 'Gudea',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             const SizedBox(height: 10),
//             const Padding(
//               padding: EdgeInsets.only(left: 15.0, top: 5.0),
//               child: Text(
//                 'Acciones',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontFamily: 'Gudea',
//                 ),
//               ),
//             ),
//             const Column(
//               children: [
//                 SizedBox(height: 10),
//                 CardWidget(),
//                 SizedBox(height: 5),
//                 CardRegistroManualWidget(),
//                 // CardWidget(),
//               ],
//             )
//           ],
//         )),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Colors.red,
//         child: const Icon(Icons.emergency),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ClipRRect(
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//           child: BottomNavigationBar(
//             backgroundColor: Colors.blue,
//             items: const <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Inicio',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.grading_sharp),
//                 label: 'Tendencia',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.monitor_heart_sharp),
//                 label: 'Salud',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.settings),
//                 label: 'Preferencias',
//               ),
//             ],
//             // backgroundColor: Colors.blue,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Datos de ejemplo para la gráfica circular
    final double nivelGlucosa = 80.0; // Valor ficticio

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 5.0),
              child: Text(
                'Mi medición del día',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Gudea',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Reemplaza la imagen con la gráfica circular
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1.0,
                    child: PieChart(
                      PieChartData(
                        sections: [
                          PieChartSectionData(
                            value: nivelGlucosa,
                            color: Colors.blue,
                            title: '$nivelGlucosa mg/dL',
                            radius:
                                30, // Ajusta el valor del radio a uno más pequeño (por ejemplo, 30)
                            titleStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Resto del contenido del Row, si lo hay.
              ],
            ),
            // Resto del contenido de la columna
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 5.0),
              child: Text(
                'Acciones',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Gudea',
                ),
              ),
            ),
            const Column(
              children: [
                SizedBox(height: 10),
                CardWidget(),
                SizedBox(height: 5),
                CardRegistroManualWidget(),
                // CardWidget(),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(Icons.emergency),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: BottomNavigationBar(
            backgroundColor: Colors.blue,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Inicio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grading_sharp),
                label: 'Tendencia',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.monitor_heart_sharp),
                label: 'Salud',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Preferencias',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
