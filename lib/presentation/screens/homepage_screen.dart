import 'package:flutter/material.dart';
import 'package:macrofactor_clone/presentation/widgets/home_dashboard/home_screen_dashboard.dart';
import 'package:macrofactor_clone/presentation/widgets/navigation_bar.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      bottomNavigationBar: NavBar(),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: const Column(children: [HomeScreenDashboard()]),
    );
  }
}
