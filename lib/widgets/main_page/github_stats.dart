import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/utils/functions.dart';
import 'package:flutter_portfolio/widgets/main_page/stats_text.dart';

class GithubStats extends StatelessWidget {
  const GithubStats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: FutureBuilder(
          future: getGithubStats(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData)
              return Center(
                  child: CircularProgressIndicator(
                color: primaryColor,
              ));
            return (MediaQuery.of(context).size.width > 500)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      StatsText(
                          number: snapshot.data['followers'] - 1,
                          text: 'Followers'),
                      Spacer(),
                      StatsText(
                          number: snapshot.data['public_repos'] - 1,
                          text: 'Repos'),
                      Spacer(),
                      StatsText(
                          number: snapshot.data['public_gists'], text: 'Gists'),
                      Spacer(),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StatsText(
                          number: snapshot.data['followers'] - 1,
                          text: 'Followers'),
                      SizedBox(
                        height: 10,
                      ),
                      StatsText(
                          number: snapshot.data['public_repos'] - 1,
                          text: 'Repos'),
                      SizedBox(
                        height: 10,
                      ),
                      StatsText(
                          number: snapshot.data['public_gists'], text: 'Gists'),
                    ],
                  );
          }),
    );
  }
}
