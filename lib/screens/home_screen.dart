import 'package:flutter/material.dart';

// Rutas a tus archivos de modelo, servicio y widget
import '../models/receta.dart';
import '../services/receta_services.dart';
import '../widgets/recipe_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Instancia del servicio y variable para almacenar la llamada asíncrona
  final RecetaServices _recetaService = RecetaServices();
  late Future<List<Receta>> _recetasFuture;

  @override
  void initState() {
    super.initState();
    // Ajusta 'getRecetas()' si tu método en receta_services.dart tiene otro nombre
    _recetasFuture = _recetaService.getRecetas();
  }

  void _mostrarMensajeMapa() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('El mapa de los pueblos originarios se está abriendo....'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _mostrarMensajeMapa,
        child: const Icon(Icons.map),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner superior intacto
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Platillos Ancestrales de Quintana Roo',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimaryContainer,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Descubre el sabor de nuestras raíces: recetas y platillos '
                      'tradicionales que han pasado de generación en generación '
                      'en los pueblos originarios de Quintana Roo.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimaryContainer,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: FutureBuilder<List<Receta>>(
                  future: _recetasFuture,
                  builder: (context, snapshot) {
                    // 1. Estado de carga
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          'Error al obtener las recetas: ${snapshot.error}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.red),
                        ),
                      );
                    }
                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(
                        child: Text('No hay recetas disponibles.'),
                      );
                    }

                    final recetas = snapshot.data!;
                    return ListView.builder(
                      itemCount: recetas.length,
                      itemBuilder: (context, index) {
                        final receta = recetas[index];

                        return RecipeCard(
                          title: receta.nombre,
                          description:
                              'Cocina: ${receta.cocina} • Dificultad: ${receta.dificultad}\n⭐ ${receta.calificacion}',
                          imageUrl: receta.imagenUrl,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}