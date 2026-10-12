import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String namaMedia) {
    final messenger = ScaffoldMessenger.of(context);
    messenger.clearSnackBars();
    messenger.showSnackBar(
      SnackBar(
        content: Text('Anda memilih $namaMedia'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  Widget _icon(String path, IconData fallback) {
    return Image.asset(
      path,
      width: 28,
      height: 28,
      errorBuilder: (_, _, _) => Icon(fallback, size: 28),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          IconButton(
            tooltip: 'Instagram',
            icon: _icon('assets/icons/instagram.png', Icons.camera_alt),
            onPressed: () => _showSnackBar(context, 'Instagram'),
          ),
          IconButton(
            tooltip: 'LinkedIn',
            icon: _icon('assets/icons/linkedin.png', Icons.work),
            onPressed: () => _showSnackBar(context, 'LinkedIn'),
          ),
          IconButton(
            tooltip: 'GitHub',
            icon: _icon('assets/icons/github.png', Icons.code),
            onPressed: () => _showSnackBar(context, 'GitHub'),
          ),
        ],
      ),
    );
  }
}
