import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../app/constant/color.dart';
import '../app/constant/text.dart';
import '../components/cardrecipes.dart';
import '../components/cardsfood.dart';
import '../components/foodregion.dart';
import '../components/textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 30,top: 80),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Guruh",
                      style: largeBold,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "What are you cooking today?",
                      style: smallerRegular.copyWith(color: neturalgray3),
                    )
                  ],
                ),
                Image.asset("assets/images/avatar.png")
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFieldWithButton(),
          SizedBox(
            height: 15,
          ),
          FoodRegion(),
          SizedBox(
            height: 35,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardsFood(),
                SizedBox(
                  width: 15,
                ),
                CardsFood(),
                SizedBox(
                  width: 15,
                ),
                CardsFood(),
                SizedBox(
                  width: 15,
                ),
                CardsFood(),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "New Recipes",
            style: normalBold,
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardRecipes(),
                SizedBox(width: 15,),
                CardRecipes(),
                SizedBox(width: 15,),
                CardRecipes(),
                SizedBox(width: 15,),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        backgroundColor: Colors.transparent,
        height: 75,
        buttonBackgroundColor: prim100Green,
        items: <Widget>[
          Image.asset("assets/images/home.png",color: prim100Green,),
          Image.asset("assets/images/saved.png",color: neturalgray4),
          SizedBox(
              height: 45,
              child: Center(child: Icon(Icons.add,color: Colors.white,size: 30,weight: 30,))
          ),
          Image.asset("assets/images/bing.png",color: neturalgray4),
          Image.asset("assets/images/profileicon.png",color: neturalgray4),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}

