import 'package:flutter/material.dart';
import 'package:shop_app_ui/widget/colors.dart';
import 'package:shop_app_ui/widget/product_list.dart';
import 'package:shop_app_ui/widget/section_title.dart';

import '../models/Product.dart';
import '../screem/detailes_screen.dart';

class Populer extends StatelessWidget {
  const Populer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Populer",
          passViewAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  title: demo_product[index].title,
                  image: demo_product[index].image,
                  bgColor: demo_product[index].bgColor,
                  price: demo_product[index].price,
                  pass: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailesPage(
                          product: demo_product[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
