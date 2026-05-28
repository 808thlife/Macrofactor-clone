import 'package:flutter/material.dart';
import 'package:macrofactor_clone/presentation/screens/food_log_screen.dart';
import 'package:macrofactor_clone/presentation/screens/homepage_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const HomePageScreen(), const FoodLogScreen()];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: _pages[_selectedIndex == 1 ? 0 : _selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle center button tap
        },
        backgroundColor: colorScheme.onPrimary,
        foregroundColor: Colors.black,
        elevation: 2,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationBar(
        backgroundColor: colorScheme.primary,
        indicatorColor: colorScheme.primary, // hides the pill indicator
        selectedIndex: _selectedIndex == 1 ? 0 : _selectedIndex,
        onDestinationSelected: (index) {
          if (index == 1) return; // ignore the dummy center slot
          setState(() => _selectedIndex = index);
        },
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.dashboard,
              color: colorScheme.onPrimary.withOpacity(0.5),
            ),
            selectedIcon: Icon(Icons.dashboard, color: colorScheme.onPrimary),
            label: 'Dashboard',
          ),
          // Empty center slot to make room for the FAB
          const NavigationDestination(icon: SizedBox(width: 48), label: ''),
          NavigationDestination(
            icon: Icon(
              Icons.food_bank,
              color: colorScheme.onPrimary.withOpacity(0.5),
            ),
            selectedIcon: Icon(Icons.food_bank, color: colorScheme.onPrimary),
            label: 'Food Log',
          ),
        ],
      ),
    );
  }
}
