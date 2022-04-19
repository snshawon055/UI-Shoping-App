import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_ui/models/Product.dart';
import 'package:shop_app_ui/widget/add_space.dart';
import 'package:shop_app_ui/widget/colors.dart';

import '../widget/contain_colors.dart';

class DetailesPage extends StatelessWidget {
  const DetailesPage({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    "assets/icons/Heart.svg",
                    height: 20,
                  )))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          addVerticalSpace(defaultPadding),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultBorderRadius * 3),
                    topRight: Radius.circular(defaultBorderRadius * 3)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        addHorizontalSpace(defaultPadding),
                        Text(
                          "\$" + product.price.toString(),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                        "A henley shirt is a collarless pullover shirt,by a round neckine and a placket about 3 to 5 inches(8 to 13 cm)long and useally having2-5 buttons.",
                      ),
                    ),
                    Text(
                      "Colors",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    addVerticalSpace(defaultPadding / 2),
                    Row(
                      children: [
                        ColorDort(
                          color: Color(0xFFBEE8EA),
                          isPass: () {},
                          isActive: false,
                        ),
                        ColorDort(
                          color: Color(0xFF141B4A),
                          isPass: () {},
                          isActive: true,
                        ),
                        ColorDort(
                          color: Color(0xFFBEE8EA),
                          isPass: () {},
                          isActive: false,
                        ),
                      ],
                    ),
                    addVerticalSpace(defaultPadding * 1.5),
                    Center(
                      child: SizedBox(
                        height: 45,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: StadiumBorder(),
                          ),
                          child: Text(
                            "Add to card",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
