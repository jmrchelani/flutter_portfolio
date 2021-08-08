import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(
        thickness: 0.3,
        color: primaryColor.withOpacity(0.5),
        indent: 10,
        endIndent: 10,
      ),
    );
  }
}
