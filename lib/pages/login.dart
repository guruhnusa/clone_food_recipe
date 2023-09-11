import 'package:clone_food_recipe/app/constant/text.dart';
import 'package:clone_food_recipe/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:text_divider/text_divider.dart';
import '../app/constant/color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          SizedBox(
            height: 94,
          ),
          Text(
            "Hello,",
            style: headerBold,
          ),
          Text(
            "Welcome Back!",
            style: largeRegular,
          ),
          SizedBox(
            height: 57,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email",
                style: smallerRegular.copyWith(color: labelcolor),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter email",
                      hintStyle: smallerRegular.copyWith(color: neturalgray4),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: neturalgray4)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: neturalgray4))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter Password",
                style: smallerRegular.copyWith(color: labelcolor),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter password",
                      hintStyle: smallerRegular.copyWith(color: neturalgray4),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: neturalgray4)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: neturalgray4))),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20, bottom: 25),
            child: Text(
              "Forgot Password?",
              style: smallerRegular.copyWith(color: sec100yellow),
            ),
          ),
          SizedBox(
            height: 60,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: prim100Green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
                },
                child: Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Sign In",
                      style: normalRegular.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                )),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextDivider.horizontal(text: Text("Or Sign in with",style: smallerRegular.copyWith(color: neturalgray4),)),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Material(
                elevation: 1,
                shadowColor: Colors.white,
                borderRadius:  BorderRadius.circular(10),
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/google.png"))
                  ),
                ),
              ),
              Material(
                elevation: 1,
                shadowColor: Colors.white,
                borderRadius:  BorderRadius.circular(10),
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/facebook.png"))
                  ),
                ),
              ),
            ],),
          ),
          Container(
            padding: EdgeInsets.only(top:55),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don’t have an account?",
                      style: smallersemibold.copyWith(color: Colors.black),
                    ),
                    TextSpan(
                      text: "  Sign Up",
                      style: smallersemibold.copyWith(color: sec100yellow), // Ganti dengan warna yang Anda inginkan
                    ),
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
