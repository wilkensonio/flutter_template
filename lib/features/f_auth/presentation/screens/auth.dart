import 'package:flutter/material.dart';

class ThemeAuthTestScreen extends StatelessWidget {
  const ThemeAuthTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Theme Test')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Primary Color Example', style: textTheme.titleLarge),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Primary Button'),
              // Uses default theme style
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Secondary Button'),
              style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.secondary,
                foregroundColor: colorScheme.onSecondary,
              ),
            ),
            const SizedBox(height: 24),
            Text('Surface Color', style: textTheme.bodyLarge),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: colorScheme.surface,
                border: Border.all(color: colorScheme.outline), // optional
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
