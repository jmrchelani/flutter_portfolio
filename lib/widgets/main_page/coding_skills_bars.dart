import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/main_page/coding.dart';
import 'package:flutter_portfolio/widgets/main_page/skills.dart';

class CodingSkillsBars extends StatelessWidget {
  const CodingSkillsBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MediaQuery.of(context).size.width > 980)
        ? Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CodingColumn(),
              )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SkillsColumn(),
                ),
              ),
            ],
          )
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CodingColumn(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SkillsColumn(),
              ),
            ],
          );
  }
}
