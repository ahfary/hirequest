import 'package:flutter/material.dart';


class InputButton extends StatelessWidget {

  final String title;
  final VoidCallback? onTap;

  const InputButton({
    super.key,
    required this.title,
    this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey
        ),
        child: Center(child: Text(title, style: const TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}