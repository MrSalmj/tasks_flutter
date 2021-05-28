import 'package:dailytasks_flutter/ui/pages/main_page/main_page.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: [MainPage()],
        ),
        bottomNavigationBar: _buildBottomNavBar(),
      ),
    );
  }

  FluidNavBar _buildBottomNavBar() {
    return FluidNavBar(
      // (1)
      icons: [
        // (2)
        FluidNavBarIcon(svgPath: "assets/svg/home.svg"), // (3)
        FluidNavBarIcon(svgPath: "assets/svg/tasks.svg"),
        FluidNavBarIcon(svgPath: "assets/svg/plans.svg"), // (3)
        FluidNavBarIcon(svgPath: "assets/svg/folders.svg"),
      ],
      onChange: (i) {}, // (4)
    );
  }
}
