import 'package:flutter/material.dart';
import 'package:food_ui_kit/view/food/food_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.food_bank)),
              Tab(icon: Icon(Icons.newspaper)),
              Tab(icon: Icon(Icons.person_3)),
            ],
          ),
          body: TabBarView(children: [
            FoodView(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ]),
        ));
  }
}
