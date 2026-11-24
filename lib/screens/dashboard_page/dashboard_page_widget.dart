import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial3/screens/login_page/login_page_model.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome ',
                key: const Key('welcome_text'),
              ), // TODO add response JSON first name
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
