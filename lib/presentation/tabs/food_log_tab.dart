import 'package:flutter/material.dart';

class FoodLogTab extends StatelessWidget {
  const FoodLogTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Food Log', style: Theme.of(context).textTheme.headlineSmall),
    );
  }
}
