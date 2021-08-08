import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/widgets/main_page/coding_skills_bars.dart';
import 'package:flutter_portfolio/widgets/main_page/github_stats.dart';
import 'package:flutter_portfolio/widgets/main_page/landing_animated_container.dart';
import 'package:flutter_portfolio/widgets/main_page/my_projects.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            LandingAnimatedBanner(),
            SizedBox(
              height: 10,
            ),
            GithubStats(),
            CodingSkillsBars(),
            MyProjectsSection(),
          ],
        ),
      ),
    );
  }
}
