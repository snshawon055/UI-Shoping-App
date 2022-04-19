import 'package:flutter/material.dart';
import 'package:shop_app_ui/screem/detailes_screen.dart';
import 'package:shop_app_ui/widget/colors.dart';
import 'package:shop_app_ui/widget/product_list.dart';
import 'package:shop_app_ui/widget/section_title.dart';

import '../models/Product.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrival",
          passViewAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: EdgeInsets.only(left: defaultPadding),
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
