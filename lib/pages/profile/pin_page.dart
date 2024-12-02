// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hirequest/ui/widgets/button.dart';

class PinPage extends StatelessWidget {
  const PinPage({super.key});

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
              Text('PIN'),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: TextFormField(
                  obscureText: true,
                  cursorColor: Colors.grey,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 16),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  InputButton(
                    title: '1',
                    onTap: () {},
                  ),
                  InputButton(
                    title: '2',
                    onTap: () {},
                  ),
                  InputButton(
                    title: '3',
                    onTap: () {},
                  ),
                  InputButton(
                    title: '4',
                    onTap: () {},
                  ),
                  InputButton(
                    title: '5',
                    onTap: () {},
                  ),
                  InputButton(
                    title: '6',
                    onTap: () {},
                  ),
                  InputButton(
                    title: '7',
                    onTap: () {},
                  ),
                  InputButton(
                    title: '8',
                    onTap: () {},
                  ),
                  InputButton(
                    title: '9',
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  InputButton(
                    title: '0',
                    onTap: () {},
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,  color: Colors.grey),
                      child: Center(child: Icon(Icons.arrow_back, size: 24,)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
