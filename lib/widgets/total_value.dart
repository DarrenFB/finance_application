import "package:flutter/material.dart";

class TotalValueSection extends StatelessWidget {
  const TotalValueSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Est. Total Value (USD)",
          style: TextStyle(
            color: Color(0xFF9E9E9E),
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "\$85,354,200.65",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.5,
              ),
            ),
            SizedBox(width: 12),
            Padding(
              padding: EdgeInsets.only(bottom: 9),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                decoration: BoxDecoration(
                  color: Color(0x554CAF50),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "+27.45%",
                  style: TextStyle(
                    color: Color(0xFF4CAF50),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}