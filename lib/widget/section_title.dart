import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.passViewAll,
  }) : super(key: key);
  final String title;
  final VoidCallback passViewAll;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
        ),
        TextButton(
            onPressed: passViewAll,
            child: Text(
              "View All",
              style: TextStyle(
                color: Colors.black54,
              ),
            ))
      ],
    );
  }
}
