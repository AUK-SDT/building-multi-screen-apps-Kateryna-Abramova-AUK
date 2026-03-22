import 'package:flutter/material.dart';
import '../widgets/credit_card.dart';
import '../widgets/transaction_item.dart';
import 'awards_page.dart';
import 'transaction_detail_page.dart';

class MonobankHomePage extends StatelessWidget {
  final String title;
  const MonobankHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildTopBar(context),
            const SizedBox(height: 20),
            const CreditCardWidget(),
            const SizedBox(height: 30),
            _buildSmallCardSwitch(),
            const SizedBox(height: 30),
            _buildActionButtons(),
            const SizedBox(height: 30),
            Expanded(child: _buildTransactionHistory(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person),
              ),
              const Spacer(),
              const Text('100.00 ₴  |', style: TextStyle(fontSize: 14)),
              IconButton(
                icon: const Icon(
                  Icons.pets_rounded,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AwardsPage()),
                  );
                },
              ),
              IconButton(icon: const Icon(Icons.analytics), onPressed: () {}),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            '1 000 000 000.99 ₴',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildActionButton(Icons.credit_card, 'Переказати', 'на карту'),
        _buildActionButton(Icons.sticky_note_2, 'Платіж', 'за IBAN'),
        _buildActionButton(Icons.grid_view, 'Інші', 'платежі'),
      ],
    );
  }

  Widget _buildActionButton(IconData icon, String l1, String l2) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xFF2C2C2C),
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(l1, style: const TextStyle(fontSize: 12)),
        Text(l2, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildTransactionHistory(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Операції', style: TextStyle(color: Colors.grey)),
          TransactionItem(
            title: 'Сільпо',
            subtitle: 'Сьогодні, 16:20',
            amount: '-399.00 ₴',
            icon: Icons.shopping_cart,
            iconColor: Colors.orange,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TransactionDetailPage(
                  title: 'Сільпо',
                  amount: '-399.00 ₴',
                ),
              ),
            ),
          ),
          // Add more items here...
        ],
      ),
    );
  }

  Widget _buildSmallCardSwitch() {
    return Container(
      width: 60,
      height: 12,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
