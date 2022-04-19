import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_ui/models/Category.dart';
import 'package:shop_app_ui/models/Product.dart';
import 'package:shop_app_ui/widget/add_space.dart';
import 'package:shop_app_ui/widget/colors.dart';

import '../widget/catagory.dart';
import '../widget/poplur.dart';
import '../widget/product.dart';
import '../widget/product_list.dart';
import '../widget/search_form.dart';
import '../widget/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(
        Radius.circular(
          defaultBorderRadius,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              "15/2 New Texas",
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
              ),
              Text(
                "best Outfits for you",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                child: SearchForm(outlineInputBorder: outlineInputBorder),
              ),
              const Catagorys(),
              addVerticalSpace(defaultPadding),
              const NewArrival(),
              addVerticalSpace(defaultPadding),
              const Populer(),
            ],
          ),
        ),
      ),
    );
  }
}
