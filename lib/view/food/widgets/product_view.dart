import 'package:flutter/material.dart';
import 'package:food_ui_kit/view/food_details/food_details_view.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  List<String> images = [
    'assets/images/burger_demo.png',
    'assets/images/dish_demo.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.5,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20, crossAxisCount: 2, crossAxisSpacing: 16),
        children: List.generate(
          10,
          (index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetailsView(
                    heroTagIndex: index,
                    imagePath: index % 2 == 0 ? images[0] : images[1],
                  ),
                ),
              );
            },
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 125,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                index % 2 == 0
                                    ? 'Spicy Bomb \n Burger'
                                    : 'Hulk Mix \n Platter',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '\$ 20.00 ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.green),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.amber,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Hero(
                  tag: 'burger$index',
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: 140,
                      child: Image.asset(
                        index % 2 == 0 ? images[0] : images[1],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
