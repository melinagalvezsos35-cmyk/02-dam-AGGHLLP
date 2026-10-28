import 'package:flutter/material.dart';

class FavoritosScreen extends StatelessWidget{
  const FavoritosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 246, 255),
      appBar: AppBar(
        title: const Text(
          "Favoritos",
          style: TextStyle(color: Color(0xFF2C2543), fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 249, 246, 255),
        elevation: 0,
        centerTitle: true,
      ),
      body: const Center(child: Text("Aqui se mostrarán tus platillos favoritos"),),
    );
  }
}