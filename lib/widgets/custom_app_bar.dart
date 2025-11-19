import "package:flutter/material.dart";
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF2A2A2A),
              border: Border.all(color: Color(0xFF3A3A3A), width: 1),
            ),
            child: ClipOval(
              child: Image.asset("assets/images/user.png", fit: BoxFit.cover),
            ),
          ),
          Row(
            children: [
              AppBarIconButton(icon: Iconsax.user),
              SizedBox(width: 12),
              AppBarIconButton(icon: Iconsax.notification),
            ],
          ),
        ],
      ),
    );
  }
}

class AppBarIconButton extends StatelessWidget {
  final IconData icon;
  const AppBarIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Icon(icon, color: Colors.white, size: 22),
    );
  }
}