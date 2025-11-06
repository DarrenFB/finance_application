import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart'; // Import for the icons

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: const Color(0xFF1A1A1A),
        systemNavigationBarColor: const Color(0xFF1A1A1A),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFF1A1A1A),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1A1A1A),
          elevation: 0,
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Profile image on the left
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF2A2A2A),
                  border: Border.all(
                    color: const Color(0xFF3A3A3A),
                    width: 1,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/profile_picture.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Icons on the right
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.user, color: Colors.white, size: 22),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.notification, color: Colors.white, size: 22),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: const SafeArea(
          child: Center(
            child: Text(
              'Home Screen Content Here',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}