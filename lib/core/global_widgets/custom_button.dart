
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.child,
    required this.bgColor,
    this.onTap,
    this.borderColor = Colors.transparent,
    this.height = 50,
    this.elevation = 0, // New elevation parameter
  });

  final Widget child;
  final Color bgColor;
  final Color borderColor;
  final double height;
  final double elevation; // New elevation property
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          surfaceTintColor: Colors.white,
          color: Colors.transparent, // To ensure the background color is only applied to the Container
          elevation: elevation, // Apply elevation
          borderRadius: BorderRadius.circular(8), // Ensure borderRadius matches Container
          child: Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              color: bgColor,
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
