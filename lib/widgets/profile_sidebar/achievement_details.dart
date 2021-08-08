import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/widgets/profile_sidebar/achievement_text.dart';

class AchievementDetails extends StatelessWidget {
  const AchievementDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AchievementText.counter = 0;
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Achievements',
            style: TextStyle(
              color: primaryColor.withOpacity(0.8),
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AchievementText(
            text:
                'MTA: Introduction to Programming Using Java - Certified 2020',
          ),
          AchievementText(
            text: 'Certified Microsoft Innovative Educator',
          ),
          AchievementText(
            text: 'AI Foundations: Imagine Cup Junior',
          ),
          AchievementText(
            text:
                'Engineering: Undergraduate & Masters Asia Virtual Experience Program',
          )
        ],
      ),
    );
  }
}
