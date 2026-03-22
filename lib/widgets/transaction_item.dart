import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;

  const TransactionItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundColor: iconColor.withValues(alpha: 0.1),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey)),
      trailing: Text(
        amount,
        style: TextStyle(
          color: amount.contains('-') ? Colors.black : Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
