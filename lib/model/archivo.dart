class Archivos {
  final int id;
  final String nombre;
  final String tipo;
  final String tamano;
  final String autor;
  bool read;

  Archivos({
    required this.id,
    required this.nombre,
    required this.tipo,
    required this.tamano,
    required this.autor,
    this.read = false,
  });
}
