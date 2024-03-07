import 'package:flutter/material.dart';

class ProductCategoryButton extends StatelessWidget {
  const ProductCategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (c, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: index == 0 ? Colors.redAccent : Colors.white,
                      width: 1),
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text('Burger',
                      style: TextStyle(
                          color: index == 0 ? Colors.redAccent : Colors.black,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
