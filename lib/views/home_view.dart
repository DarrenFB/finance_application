// ignore_for_file: unused_import

import "package:finance_application/widgets/action_buttons_widget.dart";
import "package:finance_application/widgets/custom_app_bar.dart";
import "package:finance_application/widgets/total_value.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Color(0xFF1A1A1A),
        systemNavigationBarColor: Color(0xFF1E1E1E),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Color(0xFF1A1A1A),
            body: SafeArea(
              child: Column(
                children: [
                  const CustomAppBar(),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          const TotalValueSection(),
                          SizedBox(height: 24),
                          ActionButtonRow(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}