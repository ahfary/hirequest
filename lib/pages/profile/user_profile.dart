import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // TODO: Add back navigation
          },
        ),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 24.0),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile_image.png'), // Replace with your profile image
            ),
            const SizedBox(height: 12.0),
            const Text(
              'HireQuest',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Income Pekerjaan',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8.0),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Rp.34.000.000 ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Dari Rp.45.000.000',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 6.0,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 6.0,
                    color: const Color(0xffFFCC00),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Gaji pokok', style: TextStyle(color: Colors.black)),
                Text('Rp.23.000.000', style: TextStyle(color: Colors.black)),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Gaji tambahan', style: TextStyle(color: Color(0xffFFCC00))),
                Text('Rp.11.000.000', style: TextStyle(color: Color(0xffFFCC00))),
              ],
            ),
            const SizedBox(height: 24.0),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.black),
              title: const Text('Akun saya'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
              onTap: () {
                // TODO: Navigate to My Account
              },
            ),
            ListTile(
              leading: const Icon(Icons.security, color: Colors.black),
              title: const Text('Pengaturan keamanan'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
              onTap: () {
                // TODO: Navigate to Security Settings
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.black),
              title: const Text('Pengaturan'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
              onTap: () {
                // TODO: Navigate to Settings
              },
            ),
            ListTile(
              leading: const Icon(Icons.work, color: Colors.black),
              title: const Text('Riwayat pekerjaan'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
              onTap: () {
                // TODO: Navigate to Job History
              },
            ),
            const SizedBox(height: 24.0),
            TextButton(
              onPressed: () {
                // TODO: Implement logout functionality
              },
              child: const Text(
                'Log out',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
