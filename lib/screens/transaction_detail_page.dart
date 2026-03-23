import 'package:flutter/material.dart';

//Page for transaction detail
class TransactionDetailPage extends StatelessWidget {
  final String title;
  final String amount;

  const TransactionDetailPage({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Деталі'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              amount,
              style: TextStyle(
                fontSize: 34,
                color: amount.contains('-') ? Colors.red : Colors.green,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Назад"),
            ),
          ],
        ),
      ),
    );
  }
}
