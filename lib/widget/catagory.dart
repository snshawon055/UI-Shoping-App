import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_ui/widget/colors.dart';

import '../models/Category.dart';
import '../screem/home_screen.dart';
import 'add_space.dart';

class Catagorys extends StatelessWidget {
  const Catagorys({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demo_categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: CatagoryCard(
              icon: demo_categories[index].icon,
              title: demo_categories[index].title,
              pass: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class CatagoryCard extends StatelessWidget {
  const CatagoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.pass,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback pass;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: pass,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            addVerticalSpace(defaultPadding / 2),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
      ),
    );
  }
}
