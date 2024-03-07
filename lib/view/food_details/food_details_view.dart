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
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.amber),
              ),
              const SizedBox(
                height: 50,
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
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Hero(
                tag: 'burger$heroTagIndex',
                child: Image.asset(
                  imagePath!,
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
