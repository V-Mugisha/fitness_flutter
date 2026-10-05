import 'package:flutter/material.dart';

class TweenAnimationScreen extends StatefulWidget {
  const TweenAnimationScreen({super.key});

  @override
  State<TweenAnimationScreen> createState() => _TweenAnimationScreenState();
}

class _TweenAnimationScreenState extends State<TweenAnimationScreen> {
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tween Animation')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _progress,
              onChanged: (value) {
                setState(() {
                  _progress = value;
                });
              },
            ),
            const SizedBox(height: 32),
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: _progress),
              duration: const Duration(seconds: 1),
              builder: (context, value, child) {
                return CircularProgressIndicator(value: value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
