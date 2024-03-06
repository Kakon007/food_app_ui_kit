import 'package:flutter/material.dart';
import 'package:food_ui_kit/view/food/widgets/categories.dart';
import 'package:food_ui_kit/view/food/widgets/product_view.dart';
import 'package:food_ui_kit/view/food/widgets/search.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Food',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchField(),
              SizedBox(
                height: 40,
              ),
              ProductCategoryButton(),
              SizedBox(
                height: 30,
              ),
              ProductListView(),
            ],
          ),
        ),
      ),
    );
  }
}
