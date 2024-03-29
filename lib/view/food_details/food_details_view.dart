import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FoodDetailsView extends StatelessWidget {
  final int? heroTagIndex;
  final String? imagePath;
  const FoodDetailsView({super.key, this.heroTagIndex, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite),
                          ),
                        ],
                      ),
                      Animate(
                        effects: const [
                          FadeEffect(duration: Duration(milliseconds: 500)),
                          ScaleEffect(delay: Duration(milliseconds: 300)),
                        ],
                        child: Text(
                          textAlign: TextAlign.center,
                          heroTagIndex! % 2 == 0
                              ? 'Spicy Bomb \n Burger'
                              : 'Hulk Mix \n Platter',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Food Rating: 4.5/5',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              RatingBar.builder(
                itemSize: 20,
                initialRating: 4.5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
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
