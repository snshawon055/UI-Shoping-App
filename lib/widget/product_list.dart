import 'package:flutter/material.dart';
import 'package:shop_app_ui/widget/colors.dart';

import 'add_space.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.title,
    required this.image,
    required this.bgColor,
    required this.price,
    required this.pass,
  }) : super(key: key);

  final String title, image;
  final Color bgColor;
  final int price;
  final VoidCallback pass;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pass,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(
                defaultBorderRadius,
              ),
            )),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      defaultBorderRadius,
                    ),
                  )),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            addVerticalSpace(defaultPadding / 2),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
                addHorizontalSpace(defaultPadding / 4),
                Text(
                  "\$" + price.toString(),
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
