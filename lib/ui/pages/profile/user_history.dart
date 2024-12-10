import 'package:flutter/material.dart';

class JobHistoryPage extends StatelessWidget {
  const JobHistoryPage({super.key});

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
          'Riwayat Pekerjaan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: const Color(0xffFFCC00),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'cari riwayat pekerjaan',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // TODO: Add search functionality
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              itemCount: 7, // Example count, change based on your data
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.all(8.0),
                  leading: Image.asset(
                    'assets/icons/google.png',
                    width: 40,
                    height: 40,
                  ),
                  title: const Text(
                    'Programmer',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('Google'),
                  trailing: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Jakarta, Senayan',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        'Des 20, 2024',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),

      // bottomNavigationBar: const BottomNavigation(),
    );
  }
}
