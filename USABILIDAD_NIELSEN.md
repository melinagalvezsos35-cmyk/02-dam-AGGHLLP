# Documentación de Usabilidad: Platillos Ancestrales de Quintana Roo

Este documento explica cómo la aplicación móvil cumple con los principios de usabilidad de Jakob Nielsen.

## 1. Visibilidad del estado del sistema
Se incluye un **Splash Screen** inicial de 4 segundos que da la bienvenida y prepara el entorno antes de mostrar la interfaz principal.
Durante la carga del consumo de la API de DummyJSON (`/recipes`), el sistema gestiona la asincronía de forma visual.
Al interactuar con el botón flotante (FAB) del mapa, se despliega una instantánea en pantalla (*SnackBar*).

## 2. Relación entre el sistema y el mundo real
Se emplea el título *"Platillos Ancestrales de Quintana Roo"* acompañado de un texto introductorio en la cultura local.
La tarjeta de cada platillo organiza la información (fotografía del platillo a la izquierda y nombre, tipo de cocina, dificultad y calificación a la derecha), simulando a un catálogo culinario.

## 3. Control y libertad del usuario
El componente de navegación inferior (`BottomNavigationBar`) permite a los usuarios alternar libremente y en cualquier momento entre las pestañas **Home**, **Favoritos** y **Acerca de**, facilitando el flujo de exploración.

## 4. Consistencia y estándares
Se respetó la arquitectura modular en Flutter (`models`, `widgets`, `screens`, `services`).
Las tarjetas de recetas y las secciones secundarias mantienen una línea gráfica  estandarizada en tipografía, colores tenues y espaciados.

## 5. Prevención de errores
La estructuración de modelos de datos y la separación de vistas secundarias aseguran estabilidad operativa, evitando cierres inesperados durante la navegación.

## 6. Reconocimiento antes que recuerdo
Los títulos de las vistas y las opciones del menú inferior están a la vista del usuario.
En la pantalla de **Favoritos**, se muestra un mensaje guía  (*"Aqui se mostrarán tus platillos favoritos"*).

## 7. Flexibilidad y eficiencia de uso
El listado principal utiliza una estructura deslizable (*ListView*)  para recorrer  el catálogo de recetas disponibles.

## 8. Estética y diseño minimalista
Se evita la saturación visual mediante tarjetas limpias aprovechando el ancho de la pantalla y muestran  la información (imagen, título, categoría y rating).

## 9. Ayuda a los usuarios a reconocer, diagnosticar y recuperarse de errores
Los mensajes de respuesta rápida (*SnackBar*) y las vistas de marcador de posición (*placeholders*) evitando la confusión en las interacciones del usuario.

## 10. Ayuda y documentación
 La pantalla **Acerca de** incluye una sección informativa del equipo de desarrollo, la cual se visualiza los nombres de los  integrantes responsables del proyecto:
    López Carrillo Fanny Lizbeth (Desarrollador 1)
    Hernandez Gonzalez Nikte Ayelen (Desarrollador 2)
    Galvez Sosa Jaydy Melina (Desarrollador 3)
    Loria Gil Carlos Said (Desarrollador 4)
    Góngora Chamorro Elías Alejandro (Desarrollador 5 y 6)
    Peraza Cupul Luis Ángel (Desarrollador 7)
<<<<<<< HEAD
    Arizmendi Reyes Angel de Jesus (Desarrollador 8)      
=======
    Arizmendi Reyes Angel de Jesus (Desarrollador 8)
>>>>>>> aef0479d8091a3b1cce0a508fe175f09532084ee
