import 'package:flutter/material.dart';
import 'package:hirequest/ui/pages/profile/pin_page.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  bool isTwoFactorAuthEnabled = false;
  bool isBiometricAuthEnabled = false;
  bool isSecurityQuestionsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Pengaturan Keamanan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: InkWell(
                  onTap: () {
                    // Navigasi ke halaman ubah password
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const PinPage(), // Ganti dengan halaman Anda
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/icons/ubahPassword.png'),
                      const SizedBox(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ubah Password",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Perbarui kata sandi Anda saat ini untuk\nmemastikan akun Anda tetap aman.",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6A6F7B)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/icons/a2f.png'),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Autentikasi Dua Faktor",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Tingkatkan keamanan akun Anda\ndengan memerlukan verifikasi satu detik.",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff6A6F7B)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Switch(
                      value: isTwoFactorAuthEnabled,
                      onChanged: (value) {
                        setState(() {
                          isTwoFactorAuthEnabled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/icons/fingerprint.png'),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Autentikasi Biometrik",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Perbarui kata sandi Anda saat ini untuk\nmemastikan akun Anda tetap aman.",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff6A6F7B)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Switch(
                      value: isBiometricAuthEnabled,
                      onChanged: (value) {
                        setState(() {
                          isBiometricAuthEnabled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/icons/securityQuestions.png'),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Security Questions",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Tambahkan Lapisan Keamanan Ekstra\ndengan menyiapkan security question",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff6A6F7B)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Switch(
                      value: isSecurityQuestionsEnabled,
                      onChanged: (value) {
                        setState(() {
                          isSecurityQuestionsEnabled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/icons/riwayatLogin.png'),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Riwayat Login",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Log semua upaya login ke akun Anda.\nTermasuk upaya yang berhasil dan gagal.",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff6A6F7B)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
