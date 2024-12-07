import 'package:flutter/material.dart';
import 'package:hirequest/ui/pages/home/beranda.dart';
import 'package:hirequest/ui/pages/home/search.dart';
import 'package:hirequest/ui/pages/profile/pin_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  final List<Widget>_Page = [
    const Center(
      child: BerandaPage(),
    ),
    const Center(
      child: SearchPage(),
    ),
    const Center(
      child: HomePage(),
    ),
    const Center(
      child: HomePage(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0, // Hides label text
        unselectedFontSize: 0, // Hides label text
        items: [
          _buildNavItem(Icons.home, 0),
          _buildNavItem(Icons.search, 1),
          _buildNavItem(Icons.person, 2),
          _buildNavItem(Icons.settings, 3),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, int index) {
    bool isSelected = _selectedIndex == index;
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          if (isSelected)
            Container(
              width: 30,
              height: 3,
              color: Colors.blue, // Upper line color
            ),
          const SizedBox(height: 4),
          Icon(
            icon,
            color: isSelected ? Colors.black : Colors.grey,
            size: isSelected ? 30 : 24, // Bigger size for selected icon
          ),
        ],
      ),
      label: '',
    );
  }
}
