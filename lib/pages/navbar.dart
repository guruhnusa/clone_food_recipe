import 'package:clone_food_recipe/app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';


class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        letIndexChange: (value) => false,
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
