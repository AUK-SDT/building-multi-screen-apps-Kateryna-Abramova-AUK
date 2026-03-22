import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [Colors.white12, Colors.black54],
        ),
      ),
      child: const Stack(
        children: [
          Positioned(
            left: 20,
            top: 20,
            child: Text(
              'monobank',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 40,
            child: Text(
              '4441 **** **** 9999',
              style: TextStyle(fontSize: 18, letterSpacing: 2),
            ),
          ),
          Positioned(left: 20, bottom: 20, child: Text('KATERYNA ABRAMOVA')),
        ],
      ),
    );
  }
}
