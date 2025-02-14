import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD de Planetas',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TelaListaPlanetas(),
    );
  }
}

class TelaListaPlanetas extends StatefulWidget {
  const TelaListaPlanetas({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TelaListaPlanetasEstado createState() => _TelaListaPlanetasEstado();
}

class TelaListaPlanetasEstado {
}

class _TelaListaPlanetasEstado extends State<TelaListaPlanetas> {
  // Lista de planetas
  List<String> planetas = [
    'Mercúrio',
    'Vênus',
    'Terra',
    'Marte',
    'Júpiter',
  ];

  // Função para adicionar um planeta na lista
  void _adicionarPlaneta(String planeta) {
    setState(() {
      planetas.add(planeta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planetas'),
      ),
      body: ListView.builder(
        itemCount: planetas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(planetas[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _adicionarPlaneta('Novo Planeta ${planetas.length + 1}');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
