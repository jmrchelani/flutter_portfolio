import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/widgets/profile_sidebar/achievement_details.dart';
import 'package:flutter_portfolio/widgets/custom_divider.dart';
import 'package:flutter_portfolio/widgets/profile_sidebar/knowledge_details.dart';
import 'package:flutter_portfolio/widgets/profile_sidebar/profile_branding.dart';
import 'package:flutter_portfolio/widgets/profile_sidebar/residential_details.dart';
import 'package:flutter_portfolio/widgets/profile_sidebar/social_icons.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            color: darkColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProfileBranding(),
                    CustomDivider(),
                  ],
                ),
                ResidentialDetails(),
                CustomDivider(),
                KnowledgeDetails(),
                CustomDivider(),
                AchievementDetails(),
                if (MediaQuery.of(context).size.width > 980)
                  SizedBox(
                    height: 50,
                  ),
                if (MediaQuery.of(context).size.width <= 980)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SocialIcons(),
                  ),
              ],
            ),
          ),
        ),
        if (MediaQuery.of(context).size.width > 980) SocialDetails(),
      ],
    );
  }
}
