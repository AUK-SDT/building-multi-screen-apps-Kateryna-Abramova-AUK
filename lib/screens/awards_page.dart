import 'package:flutter/material.dart';

class AwardsPage extends StatelessWidget {
  const AwardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121421),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/mono_cat_batman.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  _buildActionButton(Icons.cached, "Замінити фото"),
                  const SizedBox(width: 12),
                  _buildActionButton(
                    Icons.file_download_outlined,
                    "Завантажити",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            _buildCategoryTabs(),
            const SizedBox(height: 20),
            const Text(
              "Відкрито 4 нагороди з 6",
              style: TextStyle(
                color: Colors.tealAccent,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "🏆 Ви крутіші, ніж 100% користувачів!",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 25,
                crossAxisSpacing: 20,
                childAspectRatio: 0.8,
                children: [
                  _buildAwardItem(
                    "Знайомство",
                    "assets/images/award1.png",
                    true,
                  ),
                  _buildAwardItem(
                    "Еліта",
                    "assets/images/award_locked.png",
                    false,
                  ),
                  _buildAwardItem("Попутник", "assets/images/award2.png", true),
                  _buildAwardItem("Кіноман", "assets/images/award3.png", true),
                  _buildAwardItem(
                    "Еліта",
                    "assets/images/award_locked.png",
                    false,
                  ),
                  _buildAwardItem("Свято", "assets/images/award4.png", true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 18, color: Colors.white70),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryTabs() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          _CategoryIcon(Icons.emoji_events, isActive: true),
          _CategoryIcon(Icons.checkroom),
          _CategoryIcon(Icons.watch),
          _CategoryIcon(Icons.masks),
          _CategoryIcon(Icons.visibility),
          _CategoryIcon(Icons.image),
        ],
      ),
    );
  }

  Widget _buildAwardItem(String title, String assetPath, bool isUnlocked) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            // Outer Ring
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isUnlocked ? Colors.greenAccent : Colors.white10,
                  width: 2,
                ),
              ),
            ),
            // Award Image
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.transparent,
              child: isUnlocked
                  ? const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 40,
                    ) // Placeholder for actual PNG
                  : const Icon(
                      Icons.question_mark,
                      color: Colors.white10,
                      size: 30,
                    ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            color: isUnlocked ? Colors.white : Colors.white38,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _CategoryIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  const _CategoryIcon(this.icon, {this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Icon(
        icon,
        color: isActive ? Colors.amber : Colors.white24,
        size: 28,
      ),
    );
  }
}
