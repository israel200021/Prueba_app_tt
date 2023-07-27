import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                  const FadeInImage(
                    image: AssetImage('assets/img1.jpg'),
                    placeholder: AssetImage('assets/imgCarga.jpg'),
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Antes de Comer',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gudea',
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              '80 mg/dL',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Gudea',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Después de Comer',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gudea',
                          ),
                        ),
                         Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              '95 mg/dL',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Gudea',
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                ],
              ),
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
          )
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
            items: 
            const <BottomNavigationBarItem>[
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
            // backgroundColor: Colors.blue, 
          ),
        ),
      ),
    );
  }
}