import 'package:flutter/material.dart';
import 'package:flutter_ppkd/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class AppBarQuiz extends StatelessWidget implements PreferredSizeWidget {
  final String? titleText;
  final String? imagePath;

  const AppBarQuiz({super.key, this.titleText, this.imagePath});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.themeMode == ThemeMode.dark;

    return AppBar(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      titleSpacing: 0,
      title: Row(
        children: [
          if (titleText != null) // Jika titleText diberikan, tampilkan teks
            Text(
              titleText!,
              style: TextStyle(
                fontSize: 24,
                color: isDarkMode ? Colors.white : Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
        ],
      ),
      actions: [
        Transform.translate(
          offset: const Offset(20, 0),
          child: PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            offset: const Offset(-10, 50),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'settings',
                child: Text('Pengaturan'),
              ),
              const PopupMenuItem<String>(
                value: 'menu',
                child: Text('Menu'),
              ),
              PopupMenuItem<String>(
                value: 'theme',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Tema'),
                    StatefulBuilder(
                      builder: (context, setState) {
                        return Switch(
                          value: themeProvider.themeMode == ThemeMode.dark,
                          onChanged: (value) {
                            themeProvider.toggleTheme();
                            setState(() {}); // Perbarui tampilan Switch
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
