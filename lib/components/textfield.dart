import 'package:flutter/material.dart';

import '../app/constant/color.dart';
import '../app/constant/text.dart';


class TextFieldWithButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(

                  prefixIcon: Icon(Icons.search, color: neturalgray4),
                  contentPadding: EdgeInsets.all(10),
                  hintText:"Search recipe" ,
                  hintStyle: smallerRegular.copyWith(color: neturalgray4),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: neturalgray4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: neturalgray4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 25), // Adjust the width as needed
          Stack(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/iconsettings.png")),
                    color: prim100Green,
                    borderRadius: BorderRadius.circular(10)),
              ),
              // Image.asset("assets/images/iconsettings.png",height: 20,width: 20,)
            ],
          )
        ],
      ),
    );
  }
}
