import 'package:flutter/material.dart';
import '../app/constant/text.dart';
import '../app/constant/color.dart';


class FoodRegion extends StatelessWidget {
  const FoodRegion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 31,
              width: 54,
              decoration: BoxDecoration(
                color: prim100Green,
                borderRadius: BorderRadius.circular(10),
              ),
              child:
              Text("All", style: smallerBold.copyWith(color: Colors.white)),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Indian",
              style: smallerBold.copyWith(color: prim80Green),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Italian",
              style: smallerBold.copyWith(color: prim80Green),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Asian",
              style: smallerBold.copyWith(color: prim80Green),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Chinese",
              style: smallerBold.copyWith(color: prim80Green),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Fruit",
              style: smallerBold.copyWith(color: prim80Green),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Vegetables",
              style: smallerBold.copyWith(color: prim80Green),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Protein",
              style: smallerBold.copyWith(color: prim80Green),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Cereal",
              style: smallerBold.copyWith(color: prim80Green),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Local Dishes",
              style: smallerBold.copyWith(color: prim80Green),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}