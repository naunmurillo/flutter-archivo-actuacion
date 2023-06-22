import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../model/archivo.dart';
import '../widgets/archivo_widget.dart';
import 'detail_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  // State.
  var archivos = Backend().getArchivos();

  void markArchivosAsRead(int id) {
    Backend().markArchivosAsRead(id);
    setState(() {
      archivos = Backend().getArchivos();
    });
  }

  void deleteArchivos(int id) {
    Backend().deleteArchivos(id);
    setState(() {
      archivos = Backend().getArchivos();
    });
  }

  void showDetail(Archivos archivo) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen(archivo: archivo);
    }));

    Backend().markArchivosAsRead(archivo.id);
    setState(() {
      archivos = Backend().getArchivos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: archivos.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
        itemBuilder: (BuildContext context, int index) => ArchivosWidget(
          archivo: archivos[index],
          onTap: showDetail,
          onLongPress: markArchivosAsRead,
          onSwipe: deleteArchivos,
        ),
      ),
    );
  }
}
