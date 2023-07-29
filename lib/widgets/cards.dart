import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Conectar Glucómetro',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Gudea',
                  ),
                ),
                const Text(
                  'Bluetooth',
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'CONECTAR AHORA',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ],
            ),
          ),
          const Expanded(
            child: FadeInImage(
              image: AssetImage('assets/gota_sangre.png'),
              placeholder: AssetImage('assets/imgCarga.jpg'),
              width: 120,
              height: 120,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 200),
            ),
          ),
        ],
      ),
    );
  }
}
