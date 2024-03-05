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
        itemBuilder: (c, i) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text('Burger',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600)),
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
