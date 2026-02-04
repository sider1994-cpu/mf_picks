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
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              partido,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text('Pick: $pick', style: const TextStyle(fontSize: 14)),
            Text('Momio: $momio', style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
