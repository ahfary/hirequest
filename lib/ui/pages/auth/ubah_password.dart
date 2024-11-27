// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:hirequest/widgets/bottom_navigation.dart';

class UbahPasswordPage extends StatelessWidget {
  const UbahPasswordPage({super.key});

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
          'Kode Keamanan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   padding: const EdgeInsets.all(16.0),
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Colors.grey.shade300),
              //     borderRadius: BorderRadius.circular(8.0),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         'Masukan Kode Keamanan',
              //         style: TextStyle(fontSize: 16.0),
              //       ),
              //       SizedBox(height: 16.0),
              //       TextField(
              //         decoration: InputDecoration(
              //           border: OutlineInputBorder(),
              //           labelText: 'Kode Keamanan',
              //           labelStyle: TextStyle(fontSize: 16.0),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 16.0),
              
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigation(), 
    );
  }
}
