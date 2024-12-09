// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hirequest/shared/theme.dart';

class JobDetailPage extends StatelessWidget {
  const JobDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Job Detail"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: const NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/2/2f/Google_2015_logo.svg", // Placeholder logo
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  "Programmer",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  "Google • California • 1 day ago",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow[700],
                      padding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    child: const Text("Deskripsi"),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      padding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    child: const Text("Perusahaan"),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Tentang Perusahaan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                style: TextStyle(color: Colors.grey[800]),
              ),
              const SizedBox(height: 8),
              Text(
                "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas.",
                style: TextStyle(color: Colors.grey[800]),
              ),
              SizedBox(height: 20,),
              Text('Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.'),
              SizedBox(height: 12,),
              Text('Website', style: subJudulDetail,),
              Text('https://www.google.com'),
              SizedBox(height: 20,),
              Text('Industry', style: subJudulDetail,),
              Text('Internet product'),
              SizedBox(height: 20,),
              Text('Employee size', style: subJudulDetail,),
              Text('132,121 Employees'),
              SizedBox(height: 24,),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[700],
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  child: const Text("APPLY NOW"),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
