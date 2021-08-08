import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialDetails extends StatelessWidget {
  const SocialDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 50,
          color: secondaryColor,
          child: SocialIcons(),
        ),
      ],
    );
  }
}

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcon(
          icon: FontAwesomeIcons.facebookSquare,
          url: 'https://facebook.com/jmrchelani',
        ),
        // SizedBox(width: MediaQuery.of(context).size.width / 144),
        SocialIcon(
          icon: FontAwesomeIcons.githubSquare,
          url: 'https://github.com/jmrchelani',
        ),
        // SizedBox(width: MediaQuery.of(context).size.width / 144),
        SocialIcon(
          icon: FontAwesomeIcons.instagramSquare,
          url: 'https://instagram.com/jmrchelani',
        ),
        // SizedBox(width: 10),
        SocialIcon(
          icon: FontAwesomeIcons.medium,
          url: 'https://medium.com/jmrchelani',
        ),
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    required this.url,
    required this.icon,
  }) : super(key: key);
  final String url;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(
            url,
          );
        } else {
          throw 'Could not launch $url';
        }
      },
      icon: FaIcon(
        icon,
        color: primaryColor,
      ),
    );
  }
}
