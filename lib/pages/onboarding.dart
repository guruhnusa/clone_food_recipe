import 'package:clone_food_recipe/app/constant/color.dart';
import 'package:clone_food_recipe/pages/login.dart';
import '../app/constant/text.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset("assets/images/bg.png"),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 104, bottom: 14),
              child: SizedBox(
                width: 79,
                height: 79,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset("assets/images/chef.png"),
                ),
              ),
            ),
            Text(
              "100K+ Premium Recipe ",
              style: mediumBold.copyWith(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250, bottom: 35),
              child: SizedBox(
                  height: 150,
                  width: 213,
                  child: Text(
                    "Get Cooking",
                    style: titleBold.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),
            Text(
              "Simple way to find Tasty Recipe",
              style: normalRegular.copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 34,
            ),
            SizedBox(
              width: 243,
              height: 54,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: prim100Green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                  },
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "Start Cooking",
                        style: normalRegular.copyWith(color: Colors.white),
                      ),
                      SizedBox(width: 20,),
                      Icon(Icons.arrow_forward_sharp,color: Colors.white,size: 20,)
                    ],
                  )),
            )
          ],
        ),
      ],
    ));
  }
}
