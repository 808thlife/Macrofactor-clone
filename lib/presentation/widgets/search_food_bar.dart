import 'package:flutter/material.dart';

class SearchFoodBar extends StatelessWidget {
  const SearchFoodBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        children: [
          FormField(
            builder: (context) {
              return Text("Some");
            },
          ),
          Text(""),
        ],
      ),
    );
  }
}
