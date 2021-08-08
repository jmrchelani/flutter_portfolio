import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/models/project.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 180,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: darkColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            project.title ?? 'Project Title',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.white),
          ),
          SizedBox(height: 10),
          // Spacer(),
          Text(
            project.description ?? 'Description not added yet.',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5, color: Colors.white54),
          ),
          // Spacer(),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: (project.url != null)
                    ? () async {
                        if (await canLaunch(project.url!)) {
                          await launch(
                            project.url!,
                          );
                        } else {
                          throw 'Could not launch ${project.url!}';
                        }
                      }
                    : null,
                child: Text(
                  "Read More >>",
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
