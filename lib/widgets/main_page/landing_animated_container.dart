import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/widgets/main_page/animated_text.dart';
import 'package:flutter_portfolio/widgets/main_page/tagged_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_flutter/particles_flutter.dart';

class LandingAnimatedBanner extends StatelessWidget {
  const LandingAnimatedBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(),
        LandingContainer(),
      ],
    );
  }
}

class LandingContainer extends StatelessWidget {
  const LandingContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: (MediaQuery.of(context).size.width > 980) ? 200 : 300,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Multidisciplinary developer, crazy one :)',
              style: GoogleFonts.raleway().copyWith(
                color: primaryColor.withOpacity(0.8),
                fontSize: (MediaQuery.of(context).size.width > 350) ? 20 : 15,
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Text(
              (MediaQuery.of(context).size.width > 450)
                  ? 'Passionate Software Engineer and Multidisciplinary Developer, known as @jmrchelani everywhere.\nCurrently working on Flutter, interested in AI/Data Science. Excited to collaborate on a relevant project!'
                  : 'Passionate Software Engineer and Multidisciplinary Developer, known as @jmrchelani everywhere.',
              style: TextStyle(
                color: Colors.white60,
                fontSize: (MediaQuery.of(context).size.width > 350) ? 16 : 13,
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.white60,
                fontSize: (MediaQuery.of(context).size.width < 370) ? 10 : 15,
              ),
              child: Row(
                children: [
                  if (MediaQuery.of(context).size.width > 500)
                    TaggedText(text: 'flutter'),
                  Text(' I build '),
                  AnimatedText(),
                  Text(' '),
                  if (MediaQuery.of(context).size.width > 500)
                    TaggedText(text: 'flutter'),
                ],
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Download CV',
                      style: TextStyle(
                        color: secondaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.download_done_outlined,
                      color: secondaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedContainer extends StatelessWidget {
  const AnimatedContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: darkColor,
      ),
      height: (MediaQuery.of(context).size.width > 980) ? 200 : 300,
      width: double.infinity,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) =>
            CircularParticle(
          key: UniqueKey(),
          awayRadius: 80,
          numberOfParticles: 50,
          speedOfParticles: 1,
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          onTapAnimation: true,
          particleColor: Colors.white.withAlpha(50),
          awayAnimationDuration: Duration(milliseconds: 600),
          maxParticleSize: 4,
          isRandSize: true,
          isRandomColor: false,

          awayAnimationCurve: Curves.easeInOutBack,
          enableHover: true,
          hoverColor: Colors.white,
          hoverRadius: 90,
          connectDots: false, //not recommended
        ),
      ),
    );
  }
}
