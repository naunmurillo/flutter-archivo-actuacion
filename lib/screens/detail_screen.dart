import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/archivo.dart';

class DetailScreen extends StatelessWidget {
  final Archivos archivo;

  const DetailScreen({Key? key, required this.archivo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(archivo.nombre),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nombre archivo: ${archivo.nombre}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text(archivo.tipo, style: subjectTextStyle),
              const SizedBox(height: 5.0),
              Text(archivo.tamano, style: dateTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text(archivo.autor, style: bodyTextStyle),
            ],
          ),
        ));
  }
}
