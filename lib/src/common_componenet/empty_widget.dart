import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  final TextTheme textTheme;

  const EmptyWidget({
    super.key,
    required this.title,
    required this.textTheme,
    this.subtitle,
    this.icon = Icons.movie_creation_outlined,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 64, color: Colors.white),
          const SizedBox(height: 10),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.red, Colors.red.shade200],
            ).createShader(bounds),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
                shadows: const [
                  Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 2,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 8),
            Text(
              subtitle!,
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(color: Colors.white70),
            ),
          ],
        ],
      ),
    );
  }
}
