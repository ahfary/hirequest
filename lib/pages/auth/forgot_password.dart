import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/hirequest.png',
                  width: 150.0, height: 150.0),
              // Container(
              //   padding: const EdgeInsets.all(16.0),
              //   child: const Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       SizedBox(height: 20.0),
              //       Text(
              //         'Lupa password',
              //         style: TextStyle(
              //             fontSize: 24.0, fontWeight: FontWeight.bold),
              //       ),
              //       SizedBox(height: 8.0),
              //       Text(
              //         'Masukan email dibawah dan kami akan mengirimkan tautan untuk reset kata sandi.',
              //         textAlign: TextAlign.start,
              //         style: TextStyle(fontSize: 14.0),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 20.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lupa password',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Masukan email dibawah dan kami akan mengirimkan tautan untuk reset kata sandi.',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                      
                    const Text(
                      'Email address',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 8.0),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email address',
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      width: double.infinity,
                      height: 48.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFFCC00),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {
                          // TODO: Add forgot password functionality
                        },
                        child: const Text(
                          'Berikutnya',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Center(
                      child: Text(
                        'Jika tautan reset password error, silahkan hubungi Layanan!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ),
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
