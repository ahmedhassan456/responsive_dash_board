import 'package:flutter/material.dart';

class CustomDotIndector extends StatelessWidget {
  const CustomDotIndector({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8.0,
      width: isActive? 32.0 : 8.0,
      decoration: ShapeDecoration(
        color: isActive? const Color(0xFF4DB7F2) : const Color(0xFFE7E7E7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        )
      ),
    );
  }
}