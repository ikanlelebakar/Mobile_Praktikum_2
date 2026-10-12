import 'package:flutter/material.dart';

import '../widgets/action_buttons.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/SocialMediaRow.dart';
import 'AboutScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    const ProfileHeader(name: 'Jane Doe', nim: '25.11.****'),
                    const SizedBox(height: 24),
                    const ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'email@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                    const SizedBox(height: 24),
                    const SocialMediaRow(),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Center(
                child: ActionButtons(
                  onTentang: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const AboutScreen()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
