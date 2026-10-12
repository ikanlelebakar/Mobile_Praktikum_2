import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onTentang;
  const ActionButtons({super.key, required this.onTentang});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 12,
      runSpacing: 12,
      children: [
        ElevatedButton.icon(
          onPressed: onTentang,
          icon: const Icon(Icons.info),
          label: const Text('Tentang'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.edit),
          label: const Text('Edit'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.share),
          label: const Text('Bagikan'),
        ),
      ],
    );
  }
}
