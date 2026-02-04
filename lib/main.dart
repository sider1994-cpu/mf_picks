import 'package:flutter/material.dart';
import 'widgets/pick_card.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
// Lista de predicciones del día
const List<Map<String, String>> picksDelDia = [
  {
    'partido': 'Pumas vs Santos',
    'pick': 'Over 2.5',
    'momio': '1.85',
  },
  {
    'partido': 'Juárez vs Cruz Azul',
    'pick': 'BTTS Sí',
    'momio': '1.90',
  },
  {
    'partido': 'Forge vs Tigres',
    'pick': 'Tigres Avanza',
    'momio': '1.70',
  },
  {
    'partido': 'América vs Monterrey',
    'pick': 'Over 2.5',
    'momio': '1.80',
  },
  {
    'partido': 'Chivas vs León',
    'pick': 'BTTS Sí',
    'momio': '1.75',
  },
  {
    'partido': 'Atlas vs Santos',
    'pick': 'Under 3.0',
    'momio': '1.90',
  },
];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MF Picks',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MF Picks'),
        centerTitle: true,
      ),
      
body: Padding(
  padding: const EdgeInsets.all(16.0),
  child: Column(
    children: [
      const Text(
        'Aquí van los picks del día',
        style: TextStyle(fontSize: 18),
      ),
      const SizedBox(height: 20),
      Expanded(
        child: ListView(
          children: const [
            PickCard(
              partido: 'Pumas vs Santos',
              pick: 'Over 2.5',
              momio: '1.85',
            ),
            PickCard(
              partido: 'Juárez vs Cruz Azul',
              pick: 'BTTS Sí',
              momio: '1.90',
            ),
            PickCard(
              partido: 'Forge vs Tigres',
              pick: 'Tigres Avanza',
              momio: '1.70',
            ),
            PickCard(
              partido: 'América vs Monterrey',
              pick: 'Over 2.5',
              momio: '1.80',
            ),
            PickCard(
              partido: 'Chivas vs León',
              pick: 'BTTS Sí',
              momio: '1.75',
            ),
            PickCard(
              partido: 'Atlas vs Santos',
              pick: 'Under 3.0',
              momio: '1.90',
            ),
          ],
        ),
      ),
    ],
  ),
),
