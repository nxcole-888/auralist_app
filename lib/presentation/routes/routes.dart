import 'package:flutter/material.dart';
import 'package:auralist_app/ui/views/welcome.dart';

// Aquí puedes importar otras vistas, por ahora solo WelcomePage y un placeholder para Home
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: const Center(child: Text('Aquí irá la lista de tareas.')),
    );
  }
}

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const WelcomePage(),
  '/home': (context) => const HomePage(),
};
