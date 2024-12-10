import 'package:flutter/material.dart';
import 'package:hirequest/ui/pages/profile/user_my_account.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pengaturan',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/profile.jpg'), // Ganti dengan gambar Anda
                ),
                SizedBox(width: 16),
                Text(
                  'HireQuest',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Account Settings',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text('Ubah Profile'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfilePage()));
            },
          ),
          SwitchListTile(
            title: const Text('Nyalakan Notifikasi'),
            value: true, // Status switch
            onChanged: (bool value) {
              // Handle perubahan status
            },
            activeColor: Colors.yellow,
          ),
          SwitchListTile(
            title: const Text('Dark mode'),
            value: false, // Status switch
            onChanged: (bool value) {
              // Handle perubahan status
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'More',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text('Tentang Kami'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigasi ke halaman Tentang Kami
            },
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigasi ke halaman Privacy Policy
            },
          ),
          ListTile(
            title: const Text('Terms and Conditions'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigasi ke halaman Terms and Conditions
            },
          ),
        ],
      ),
    );
  }
}
