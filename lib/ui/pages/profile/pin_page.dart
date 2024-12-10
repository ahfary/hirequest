import 'package:flutter/material.dart';
import 'package:hirequest/ui/pages/profile/user_change_password.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController _pinController = TextEditingController();
  String _pin = '';
  final String correctPin = '123456'; // PIN yang benar

  // Function untuk menambahkan angka ke PIN
  void _addPin(String number) {
    if (_pin.length < 6) {
      setState(() {
        _pin += number;
        _pinController.text = _pin;

        // Jika panjang PIN mencapai 6, periksa apakah PIN benar
        if (_pin.length == 6) {
          _validatePin();
        }
      });
    }
  }

  // Function untuk menghapus angka terakhir dari PIN
  void _removePin() {
    if (_pin.isNotEmpty) {
      setState(() {
        _pin = _pin.substring(0, _pin.length - 1);
        _pinController.text = _pin;
      });
    }
  }

  // Function untuk validasi PIN
  void _validatePin() {
    if (_pin == correctPin) {
      // PIN benar, navigasi ke halaman beranda
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ChangePasswordPage()),
      );
    } else {
      // PIN salah, reset PIN dan tampilkan pesan
      setState(() {
        _pin = '';
        _pinController.clear();
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('PIN salah, coba lagi!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('PIN', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: _pinController,
                  obscureText: true,
                  cursorColor: Colors.grey,
                  textAlign: TextAlign.center, // Text rata tengah
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 16,
                  ),
                  readOnly: true, // Agar user tidak bisa langsung mengetik
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 66),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  for (var i = 1; i <= 9; i++)
                    InputButton(
                      title: '$i',
                      onTap: () => _addPin('$i'),
                    ),
                  const SizedBox(width: 60, height: 60), // Spacer untuk posisi tombol 0
                  InputButton(
                    title: '0',
                    onTap: () => _addPin('0'),
                  ),
                  GestureDetector(
                    onTap: _removePin,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: const Center(
                        child: Icon(Icons.arrow_back, size: 24, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const InputButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade200,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda')),
      body: const Center(child: Text('Selamat datang di halaman beranda!')),
    );
  }
}
