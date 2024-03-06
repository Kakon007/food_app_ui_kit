import 'package:flutter/material.dart';

class FoodDetailsView extends StatelessWidget {
  int? heroTagIndex;
  String? imagePath;
  FoodDetailsView({super.key, this.heroTagIndex, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.amber),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Burger',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Hero(
            tag: 'burger$heroTagIndex',
            child: Image.asset(
              imagePath!,
              height: 200,
              width: 200,
            ),
          )
        ],
      ),
    ));
  }
}
