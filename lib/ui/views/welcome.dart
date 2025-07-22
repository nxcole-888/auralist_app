import 'package:flutter/material.dart';
import 'dart:math';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo degradado
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFFFDE4), // blanco amarillento
                  Color(0xFFFDEBFF), // rosa pastel
                  Color(0xFFE6FFE6), // verde pastel
                ],
              ),
            ),
          ),
          // Estrellitas y decoraciones cute
          const _CuteStars(),
          // Contenido principal
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 32),
                const Text(
                  '¡Bienvenido a tu Lista de Tareas!',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3CB371), // Verde check
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Organiza tu día, marca tus logros.',
                  style: TextStyle(fontSize: 18, color: Color(0xFF888888)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF3CB371), // Verde check
                    padding: const EdgeInsets.symmetric(
                      horizontal: 48,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: const Text(
                    'Comenzar',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget para estrellitas y decoraciones cute
class _CuteStars extends StatelessWidget {
  const _CuteStars();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Estrellitas de diferentes colores y posiciones
        Positioned(
          top: 60,
          left: 40,
          child: _Star(color: Colors.yellow, size: 32),
        ),
        Positioned(
          top: 120,
          right: 60,
          child: _Star(color: Colors.pinkAccent, size: 24),
        ),
        Positioned(
          bottom: 100,
          left: 80,
          child: _Star(color: Colors.greenAccent, size: 28),
        ),
        Positioned(
          bottom: 60,
          right: 40,
          child: _Star(color: Colors.amber, size: 36),
        ),
        Positioned(
          top: 200,
          left: 160,
          child: _Star(color: Colors.purpleAccent, size: 20),
        ),
        // Carita cute
        Positioned(bottom: 160, right: 120, child: _CuteFace()),
      ],
    );
  }
}

class _Star extends StatelessWidget {
  final Color color;
  final double size;
  const _Star({required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 10,
      child: Icon(
        Icons.star_rounded,
        color: color,
        size: size,
        // ignore: deprecated_member_use
        shadows: [Shadow(color: color.withOpacity(0.4), blurRadius: 8)],
      ),
    );
  }
}

class _CuteFace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(Icons.circle, color: Colors.pinkAccent, size: 10),
        SizedBox(width: 4),
        Text('^_^', style: TextStyle(fontSize: 22, color: Colors.deepPurple)),
        SizedBox(width: 4),
        Icon(Icons.circle, color: Colors.pinkAccent, size: 10),
      ],
    );
  }
}
