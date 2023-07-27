import 'package:flutter/material.dart';

class CardRegistroManualWidget extends StatelessWidget {
  const CardRegistroManualWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Registro Manual',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Gudea',
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 16.0, right: 5.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Glucosa',
                              suffixText: 'mg/dL'
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Mes',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Día',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'CONFIRMAR REGISTRO',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ]
            ),
        )
        );
  }
}
