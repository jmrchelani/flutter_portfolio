import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/models/project.dart';
import 'package:flutter_portfolio/utils/data.dart';
import 'package:flutter_portfolio/utils/functions.dart';
import 'package:flutter_portfolio/widgets/main_page/project_card.dart';

class MyProjectsSection extends StatelessWidget {
  MyProjectsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Projects (Github)',
            style: TextStyle(
              color: primaryColor.withOpacity(0.8),
              fontSize: 20,
            ),
          ),
          Divider(
            thickness: 0.3,
            color: primaryColor.withOpacity(0.5),
          ),
          FutureBuilder(
            future: getGithubProjects(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData)
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: primaryColor,
                    ),
                  ),
                );
              projects = [];
              List<Project> tempo = [];
              snapshot.data.forEach((e) => tempo.add(Project(
                  e['name'], e['description'], e['stargazers_count'],
                  url: e['html_url'])));
              tempo.sort((a, b) => b.stars.compareTo(a.stars));
              if (tempo.length < 5)
                projects = tempo;
              else {
                for (int i = 0; i < 4; i++) {
                  projects.add(tempo[i]);
                }
              }
              return GridView.builder(
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: projects.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      (MediaQuery.of(context).size.width > 980) ? 2 : 1,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: getRatio(context),
                  // MediaQuery.of(context).size.width /
                  //     MediaQuery.of(context).size.height,
                ),
                itemBuilder: (context, i) => ProjectCard(
                  project: projects[i],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
