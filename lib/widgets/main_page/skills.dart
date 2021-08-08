import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/widgets/main_page/animated_bars.dart';

class SkillsColumn extends StatelessWidget {
  const SkillsColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Skills',
          style: TextStyle(
            color: primaryColor.withOpacity(0.8),
            fontSize: 20,
          ),
        ),
        Divider(
          thickness: 0.3,
          color: primaryColor.withOpacity(0.5),
        ),
        (MediaQuery.of(context).size.width > 380)
            ? Row(
                children: [
                  AnimatedCircularProgressIndicator(
                    percentage: 0.65,
                    label: "Flutter",
                  ),
                  AnimatedCircularProgressIndicator(
                    percentage: 0.55,
                    label: "Frontend",
                  ),
                  AnimatedCircularProgressIndicator(
                    percentage: 0.7,
                    label: "Backend",
                  )
                ],
              )
            : Column(
                children: [
                  AnimatedCircularProgressIndicator(
                    percentage: 0.65,
                    label: "Flutter",
                  ),
                  AnimatedCircularProgressIndicator(
                    percentage: 0.55,
                    label: "Frontend",
                  ),
                  AnimatedCircularProgressIndicator(
                    percentage: 0.7,
                    label: "Backend",
                  )
                ],
              ),
      ],
    );
  }
}
