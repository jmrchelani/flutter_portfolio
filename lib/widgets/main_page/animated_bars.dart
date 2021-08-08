import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        text != null ? "$value$text" : "$value",
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: primaryColor),
      ),
    );
  }
}

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return (MediaQuery.of(context).size.width > 380)
        ? Expanded(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: percentage),
                      duration: defaultDuration,
                      builder: (context, double value, child) => Stack(
                        fit: StackFit.expand,
                        children: [
                          CircularProgressIndicator(
                            value: value,
                            color: primaryColor,
                            backgroundColor: darkColor,
                          ),
                          Center(
                            child: Text(
                              (value * 100).toInt().toString() + "%",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: primaryColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: defaultPadding / 2),
                  Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: percentage),
                    duration: defaultDuration,
                    builder: (context, double value, child) => Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          value: value,
                          color: primaryColor,
                          backgroundColor: darkColor,
                        ),
                        Center(
                          child: Text(
                            (value * 100).toInt().toString() + "%",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: primaryColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: defaultPadding / 2),
                Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  (value * 100).toInt().toString() + "%",
                  style: TextStyle(color: primaryColor),
                ),
              ],
            ),
            SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
