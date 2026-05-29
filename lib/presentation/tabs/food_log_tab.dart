import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class FoodLogTab extends StatelessWidget {
  const FoodLogTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // colored header
        ColoredBox(
          color: Theme.of(context).colorScheme.primary,
          child: SafeArea(
            bottom: false, // only apply top safe area
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    MdiIcons.arrowLeft,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                Text(
                  "Today",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    MdiIcons.arrowRight,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
        // rest of content
        Expanded(
          child: Container(
            color: Theme.of(context).colorScheme.secondary,
            // your food log content here
          ),
        ),
      ],
    );
  }
}
