import 'package:flutter/material.dart';

class AcercadeScreen extends StatelessWidget {
  const AcercadeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 246, 255),
      appBar: AppBar(
        title: const Text(
          "Acerca de",
          style: TextStyle(color: Color(0xFF2C2543), fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 249, 246, 255),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFF6B4EE6)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 235, 229, 255),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Equipo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 101, 74, 219),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Conoce a los integrantes del equipo desarrollador de la app.",
                    style: TextStyle(fontSize: 13, color: Color(0xFF6E6A8A)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildMiembro("López Carrillo Fanny Lizbeth", "Desarollador 1"),
            const SizedBox(height: 12),
            _buildMiembro("Hernandez Gonzalez Nikte Ayelen", "Desarollador 2"),
            const SizedBox(height: 12),
            _buildMiembro("Galvez Sosa Jaydy Melina", "Desarollador 3"),
            const SizedBox(height: 12),
            _buildMiembro("Loria Gil Carlos Said", "Desarollador 4"),
            const SizedBox(height: 12),
            _buildMiembro("Góngora Chamorro Elías Alejandro", "Desarollador 5 y 6"),
            const SizedBox(height: 12),
            _buildMiembro("Peraza Cupul Luis Ángel", "Desarollador 7"),
            const SizedBox(height: 12),
            _buildMiembro("Arizmendi Reyes Ángel de Jesus", "Desarollador 8"),
          ],
        ),
      ),
    );
  }

  Widget _buildMiembro(String nombre, String rol) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(151, 106, 78, 230),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.person, color: Color.fromARGB(255, 106, 78, 231), size: 28),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nombre,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 42, 35, 65),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                rol,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 105, 77, 228),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}