import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class SearchFoodBar extends StatelessWidget {
  const SearchFoodBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for food...',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(
                    MdiIcons.magnify,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.surface,
                ),
              ),
            ),
            const SizedBox(width: 15),
            const Icon(
              MdiIcons.bookOpenPageVariantOutline,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
