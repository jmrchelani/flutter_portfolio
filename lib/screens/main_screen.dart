import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/widgets/main_page/main_page.dart';
import 'package:flutter_portfolio/widgets/profile_sidebar/profile_details.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          // color: bgColor,
          child: (MediaQuery.of(context).size.width > 980)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ProfileDetails(),
                    ),
                    Expanded(
                      flex: 4,
                      child: SingleChildScrollView(
                        child: MainPage(),
                      ),
                    ),
                  ],
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      ProfileDetails(),
                      MainPage(),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
