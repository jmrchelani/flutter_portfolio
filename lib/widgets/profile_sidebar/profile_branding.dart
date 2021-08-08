import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBranding extends StatelessWidget {
  const ProfileBranding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: secondaryColor,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/55441239?v=4'),
            radius: (MediaQuery.of(context).size.width > 980)
                ? MediaQuery.of(context).size.width / 25
                : 100,
            // child: Text('M'),
          ),
        ),
        Text(
          'Milton Chelani',
          style: GoogleFonts.sacramento().copyWith(
            color: primaryColor,
            fontSize: 30,
          ),
        ),
        Text(
          'Software Engineer',
          style: GoogleFonts.raleway().copyWith(
            color: primaryColor.withOpacity(0.8),
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
