import 'package:flutter/material.dart';
import 'package:macrofactor_clone/presentation/tabs/food_log_tab.dart';
import 'package:macrofactor_clone/presentation/widgets/home_dashboard/home_screen_dashboard.dart';
import 'package:macrofactor_clone/presentation/widgets/navbar_item.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int currentIndex = 0;

  final _screens = [
    const HomeScreenDashboard(),
    const SizedBox(), // FAB
    const FoodLogTab(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,

      body: _screens[currentIndex],

      bottomNavigationBar: Container(
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.only(bottom: 30, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavBarItem(
              icon: Icons.dashboard,

              label: "Dashboard",

              isActive: currentIndex == 0,

              onTap: () => onTabTapped(0),
            ),

            IconButton(
              icon: const Icon(Icons.add),

              onPressed: () => onTabTapped(1),

              color: currentIndex == 1
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.shadow,
            ),

            NavBarItem(
              icon: Icons.food_bank,

              label: "Food Log",

              isActive: currentIndex == 2,

              onTap: () => onTabTapped(2),
            ),
          ],
        ),
      ),
    );
  }
}
