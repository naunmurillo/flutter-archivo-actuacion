import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/archivo.dart';

class ArchivosWidget extends StatelessWidget {
  final Archivos archivo;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const ArchivosWidget(
      {Key? key,
      required this.archivo,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(archivo.id);
      },
      onLongPress: () {
        onLongPress(archivo.id);
      },
      onTap: () {
        onTap(archivo);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                decoration: BoxDecoration(
                    color: archivo.read ? Colors.transparent : primaryColor,
                    shape: BoxShape.circle),
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(archivo.nombre,
                      style: dateTextStyle),
                  Text(archivo.tipo, style: fromTextStyle),
                  Text(archivo.autor, style: subjectTextStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
