import 'archivo.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();


  final _archivos = [
    Archivos(
      id: 1,
      nombre: 'Manual de javascript',
      tipo: 'Pdf',
      tamano:"2 MB",
      autor:"Alfred Kasking",
    ),
    Archivos(
      id: 2,
      nombre: 'Libro de base de datos de mongo',
      tipo: 'Word',
      tamano:" 3 MB",
      autor:"Bryan Molina",
    ),
    Archivos(
      id: 3,
      nombre: 'Manual de KNIME',
      tipo: 'Pdf',
      tamano:" 5 mb",
      autor:"Velasco Naun",
    ),
    Archivos(
      id: 4,
      nombre: 'Manual de Dart',
      tipo: 'Word',
      tamano:"4 mb",
      autor:"Fernando Herrera",
    ),
    
      ];

   List<Archivos> getArchivos() {
    return _archivos;
  }


  void markArchivosAsRead(int id) {
    final index = _archivos.indexWhere((archivo) => archivo.id == id);
    _archivos[index].read = true;
  }


  void deleteArchivos(int id) {
    _archivos.removeWhere((archivo) => archivo.id == id);
  }
 
}
