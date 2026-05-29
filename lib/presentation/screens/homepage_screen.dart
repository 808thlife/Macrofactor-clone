import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:macrofactor_clone/presentation/screens/add_food_screen.dart';
import 'package:macrofactor_clone/presentation/tabs/food_log_tab.dart';
import 'package:macrofactor_clone/presentation/widgets/home_dashboard/home_screen_dashboard.dart';
import 'package:macrofactor_clone/presentation/widgets/navbar_item.dart';
import 'package:macrofactor_clone/presentation/widgets/search_food_bar.dart';

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
    FoodLogTab(),
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

      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SearchFoodBar(),
          Divider(color: const Color.fromARGB(255, 68, 67, 67), height: 0.1),
          Container(
            color: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.only(bottom: 20, top: 5),
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

                SizedBox(
                  width: 35,
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),

                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      elevation: 0,
                    ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogFoodScreen(),
                        ),
                      );
                    },

                    child: const Icon(Icons.add, color: Colors.black),
                  ),
                ),

                NavBarItem(
                  icon: MdiIcons.foodAppleOutline,

                  label: "Food Log",

                  isActive: currentIndex == 2,

                  onTap: () => onTabTapped(2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
