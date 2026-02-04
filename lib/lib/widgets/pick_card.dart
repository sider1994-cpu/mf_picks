
import 'package:flutter/material.dart';

class PickCard extends StatelessWidget {
  final String partido;
  final String pick;
  final String momio;

  const PickCard({
    super.key,
    required this.partido,
    required this.pick,
    required this.momio,
  });

  @override
  Widget build(BuildContext context) {
    // Cambia el color de la tarjeta según el pick
    Color cardColor = Colors.grey[900]!; // por defecto

    if (pick.toLowerCase().contains('over')) {
      cardColor = Colors.green[800]!;
    } else if (pick.toLowerCase().contains('under')) {
      cardColor = Colors.red[800]!;
    } else if (pick.toLowerCase().contains('btts')) {
      cardColor = Colors.blue[800]!;
    }

    return Card(
      color: cardColor,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              partido,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 6),
            Text('Pick: $pick',
                style: const TextStyle(fontSize: 16, color: Colors.white70)),
            Text('Momio: $momio',
                style: const TextStyle(fontSize: 16, color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}
