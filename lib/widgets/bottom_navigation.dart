import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Page ${_selectedIndex + 1}'), // Placeholder for content
      ),
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
