import 'package:flutter/material.dart';
import 'package:macrofactor_clone/presentation/widgets/home_screen_dashboard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,

      body: const Column(children: [HomeScreenDashboard()]),
    );
  }
}
