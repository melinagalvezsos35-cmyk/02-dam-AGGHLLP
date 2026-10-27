class Receta {
  final int id;
  final String nombre;
  final String cocina;
  final String dificultad;
  final double calificacion;
  final String imagenUrl;
  const Receta({
    required this.id,
    required this.nombre,
    required this.cocina,
    required this.dificultad,
    required this.calificacion,
    required this.imagenUrl,
  });

  factory Receta.fromJson(Map<String, dynamic> json) {
    return Receta(
      id: json['id'],
      nombre: json['name'],
      cocina: json['cuisine'],
      dificultad: json['difficulty'],
      calificacion: (json['rating'] as num).toDouble(),
      imagenUrl: json['image'],
    );
  }
}