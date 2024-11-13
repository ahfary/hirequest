import 'package:flutter/material.dart';
import 'package:hirequest/widgets/bottom_navigation.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

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
          'Pengaturan Keamanan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/icons/ubahPassword.png'),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ubah Password", style: TextStyle(fontSize: 16),),
                        Text("Perbarui kata sandi Anda saat ini untuk\nmemastikan akun Anda tetap aman.", style: TextStyle(fontSize: 12 ,color: Color(0xff6A6F7B)),)
                      ],
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/icons/a2f.png'),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Autentikasi Dua Faktor", style: TextStyle(fontSize: 16),),
                        Text("Tingkatkan keamanan akun Anda\ndengan memerlukan verifikasi satu detik.", style: TextStyle(fontSize: 12 ,color: Color(0xff6A6F7B)),)
                      ],
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/icons/fingerprint.png'),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Autentikasi Biometrik", style: TextStyle(fontSize: 16),),
                        Text("Perbarui kata sandi Anda saat ini untuk\nmemastikan akun Anda tetap aman.", style: TextStyle(fontSize: 12 ,color: Color(0xff6A6F7B)),)
                      ],
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),  
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/icons/securityQuestions.png'),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Security Questions", style: TextStyle(fontSize: 16),),
                        Text("Tambahkan Lapisan Keamanan Ekstra\ndengan menyiapkan security question", style: TextStyle(fontSize: 12 ,color: Color(0xff6A6F7B)),)
                      ],
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/icons/riwayatLogin.png'),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Riwayat Login", style: TextStyle(fontSize: 16),),
                        Text("Log semua upaya login ke akun Anda.\nTermasuk upaya yang berhasil dan gagal.", style: TextStyle(fontSize: 12 ,color: Color(0xff6A6F7B)),)
                      ],
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.arrow_forward_ios_rounded)
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