import 'package:flutter/material.dart';
import '../app/constant/color.dart';
import '../app/constant/text.dart';

class CardRecipes extends StatelessWidget {
  const CardRecipes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            height: 127,
            width: 251
        ),
        Container(
          width: 251,
          height: 95,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 20,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
        ),
        Positioned(
            left: 155,
            bottom: 45,
            child: ClipOval(
              child: SizedBox(
                width: 80, // Lebar gambar
                height: 80, // Tinggi gambar
                child: Image.asset("assets/images/barbeque.png",fit: BoxFit.cover),
              ),
            )

        ),
        Positioned(
            bottom: 65,
            right: 110,
            child: Text("Steak with tomato",style: smallBold.copyWith(color: neturalgray1),)),
        Positioned(
          bottom: 45,
          right: 172,
          child: Row(
            children: [
              Icon(
                Icons.star_rounded,
                color: rating,
                size: 14,
              ),
              Icon(
                Icons.star_rounded,
                color: rating,
                size: 14,
              ), Icon(
                Icons.star_rounded,
                color: rating,
                size: 14,
              ), Icon(
                Icons.star_rounded,
                color: rating,
                size: 14,
              ), Icon(
                Icons.star_rounded,
                color: rating,
                size: 14,
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 7,
            right: 215,
            child: ClipOval(
              child: SizedBox(
                width: 25, // Lebar gambar
                height: 25, // Tinggi gambar
                child: Image.asset("assets/images/profile.png"),
              ),
            )
        ),
        Positioned(
            bottom: 11,
            right: 115,
            child: Text("By James Milner",style: smallerRegular.copyWith(color: neturalgray3),)),
        Positioned(
          bottom: 10,
          left: 170,
          child: Row(
            children: [
              Icon(Icons.timer_outlined,color: neturalgray3,size: 20,),
              SizedBox(width: 5,),
              Text("20 mins",style: smallerRegular.copyWith(color: neturalgray3),)
            ],
          ),
        )
      ],
    );
  }
}
