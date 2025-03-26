import 'package:flutter/material.dart';

class ShellExampleScreen extends StatelessWidget {
  const ShellExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shell Example Screen'),
      ),
      body: const Center(
        child: Text('Shell Example Screen'),
      ),
    );
  }
}
