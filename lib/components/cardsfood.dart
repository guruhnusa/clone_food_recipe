import 'package:flutter/material.dart';

import '../app/constant/color.dart';
import '../app/constant/text.dart';

class CardsFood extends StatelessWidget {
  const CardsFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 231,
          width: 150,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        ),
        Positioned(
          top: 56,
          child: Container(
            height: 176,
            width: 150,
            decoration: BoxDecoration(
                color: neturalgray4.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        Positioned(
          child: ClipOval(
            child: SizedBox(
              width: 109,
              height: 110,
              child: Image.asset("assets/images/food1.png"),
            ),
          )

        ),
        Positioned(
            top: 120,
            child: SizedBox(
                height: 42,
                width: 130,
                child: Text(
                  "Classic Greek Salad",
                  style: smallBold.copyWith(color: neturalgray1),
                  textAlign: TextAlign.center,
                ))),
        Positioned(
            top: 180,
            right: 110,
            child: Text(
              "Time",
              style: smallerRegular.copyWith(color: neturalgray3),
            )),
        Positioned(
            top: 200,
            right: 95,
            child: Text(
              "15 Mins",
              style: smallerBold.copyWith(color: neturalgray1),
            )),
        Positioned(
            top: 195,
            left: 110,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 17,
                  height: 17,
                  child: Image.asset("assets/images/saved.png",
                      color: prim80Green),
                )
              ],
            )),
        Positioned(
            top: 30,
            left: 100,
            child: Container(
              width: 45,
              height: 23,
              decoration: BoxDecoration(
                  color: sec20yellow, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: rating,
                    size: 17,
                  ),
                  Text(
                    "4.5",
                    style: smallerRegular.copyWith(color: Colors.black),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
