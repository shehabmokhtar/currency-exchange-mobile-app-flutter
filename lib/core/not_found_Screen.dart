import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});
  static const String routeName = '/not-found';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Found'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('This screen is not exist'),
      ),
    );
  }
}
