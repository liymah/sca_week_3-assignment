import 'package:flutter/material.dart';

import '../navigation/app_route_strings.dart';
import '../shared/app_colors.dart';
import '../shared/button.dart';
import '../shared/constants.dart';
import '../shared/social_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "CodeChamp.in",
                  style: headingTextStyle.copyWith(),
                ),
                // Image.asset(
                //  AppAssets.menu,
                // height: 33,
                // ),
              ],
            ),
            const SizedBox(
              height: 65.0,
            ),
            // Image.asset(
            //  AppAssets.welcome,
            //   height: 100,
            // ),
            const SizedBox(
              height: 50.0,
            ),
            Text(
              "Hello , Welcome !",
              style: headingTextStyle.copyWith(),
            ),
            const SizedBox(height: 30),
            Text(
              "Welcome to codeChamp.in Top platform \nto coders",
              textAlign: TextAlign.center,
              style: normalText.copyWith(),
            ),
            const SizedBox(
              height: 35,
            ),
            CustomButton(
              callback: () {
                Navigator.pushNamed(context, AppRouteString.loginScreen);
              },
              text: "Login",
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
              callback: () {
                Navigator.pushNamed(context, AppRouteString.signupScreen);
              },
              text: "Signup",
            ),

            SizedBox(
              height: 35.0,
            ),
            Text(
              "Or  via social media",
              style: normalText.copyWith(
                  fontWeight: FontWeight.w500, fontSize: 14.0),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 140),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SocialButton(
                  //   backgroundImage: AssetImage(AppAssets.fbk),
                  // ),
                  // SocialButton(
                  //   backgroundImage: AssetImage(AppAssets.goog),
                  // ),
                  // SocialButton(
                  //   backgroundImage: AssetImage(AppAssets.ln),
                  // ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
