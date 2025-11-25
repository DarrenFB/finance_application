import 'package:flutter/material.dart';
import 'dart:math' as math;

class CurrencyCard extends StatelessWidget {
  final String currency;
  final String amount;

  const CurrencyCard({
    super.key,
    required this.currency,
    required this.amount,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      decoration: BoxDecoration(
        color: Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(17),
                decoration: BoxDecoration(
                  color: Color.fromARGB(50, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Transform.rotate(
                  angle: math.pi / -4,
                  child: Icon(
                    Icons.arrow_forward,
                    size: 24,
                    color: Color(0xFFE4F34D),
                  ),
                )
              )
            ]
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currency,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start
                ),
                SizedBox(height: 4,),
                Text(amount, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFFB3B3B3)),)
              ]
            ),
          )

        ]
    )
  );
  }
}

class CurrencyCardSection extends StatelessWidget {
  const CurrencyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CurrencyCard(
            currency: "USD",
            amount: "\$6,500.50 USD",
          ),
        ),
        Expanded(
          child: CurrencyCard(
            currency: "EUR",
            amount: "€1,368.63 EUR",
          ),
        )
      ]
    );
  }
}