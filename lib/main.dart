import 'package:flutter/material.dart';
import 'package:hirequest/ui/pages/home/beranda.dart';
import 'package:hirequest/ui/pages/home/company_job_hire.dart';
import 'package:hirequest/ui/pages/home/search.dart';
import 'package:hirequest/ui/pages/home/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
