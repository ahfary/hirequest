import 'package:flutter/material.dart';

class SwitchTogle extends StatefulWidget {
  @override
  _SwitchTogleState createState() => _SwitchTogleState();
}

class _SwitchTogleState extends State<SwitchTogle> {
  bool _isSwitched = false;

  void _toggleSwitch(bool value) {
    setState(() {
      _isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Example'),
      ),
      body: Center(
        child: Switch(
          value: _isSwitched,
          onChanged: _toggleSwitch,
          activeColor: Colors.amber, // Warna aktif
          activeTrackColor: Colors.amberAccent, // Warna track aktif
        ),
      ),
    );
  }
}
