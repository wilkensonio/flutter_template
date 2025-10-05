import 'package:flutter/material.dart';

class ThemeTestScreen extends StatelessWidget {
  const ThemeTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Theme Test')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Primary Color Example', style: textTheme.titleLarge),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Primary Button'),
            ),
            const SizedBox(height: 12),
            Text('Surface Color', style: textTheme.bodyLarge),
            Container(width: 100, height: 100, color: colorScheme.surface),
          ],
        ),
      ),
    );
  }
}
