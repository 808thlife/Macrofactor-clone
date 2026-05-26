import 'package:flutter/material.dart';

class HomeScreenDashboard extends StatelessWidget {
  const HomeScreenDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Text("Sunday, August 28"),
          Text("Dashboard"),
          Text("Nutrition & Targets"),
          Text(
            "Dashboard here",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text("Remaining and not reamining"),
        ],
      ),
    );
  }
}
