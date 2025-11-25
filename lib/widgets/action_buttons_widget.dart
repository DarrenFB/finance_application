// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isHighlight;
  final double height;
  
  final TextStyle textStyle;

  const ActionButton({
    super.key,
    required this.icon,
    required this.label,
    this.isHighlight = false,
    this.textStyle = const TextStyle(),
    this.height = 90,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: isHighlight ? Color(0xFFE4F34D) : Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isHighlight ? Color(0xFF1A1A1A) : Colors.white,
            size: 24,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isHighlight ? Color(0xFF1A1A1A) : Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class ActionButtonRow extends StatelessWidget {
  const ActionButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ActionButton(
                icon: Iconsax.add,
                label: "Deposit",
                isHighlight: true,
                textStyle: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ActionButton(
                icon: Iconsax.send,
                label: "Send",
                textStyle: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ActionButton(
                icon: Iconsax.document,
                label: "Earn",
                textStyle: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ActionButton(
                icon: Iconsax.more,
                label: "Swap",
                textStyle: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        
        Row(
          children: [
            Expanded(
              child: ActionButton(
                icon: Iconsax.more,
                label: "USD",
                textStyle: TextStyle(
                  fontSize: 100,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ActionButton(
                icon: Iconsax.wallet,
                label: "EURO",
                textStyle: TextStyle(
                  fontSize: 100,
                ),
                // height: 180,
              ),
            ),
          ],
        ),
        
      ],
    );
  }
}
