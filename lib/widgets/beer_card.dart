import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_beer_academia/constants/app_colors.dart';
import 'package:my_beer_academia/models/beer.dart';

class BeerCard extends StatelessWidget {
  BeerCard({Key? key, required this.beer}) : super(key: key);
  Beer beer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.w),
      child: Card(
        color: white,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Image.network(
                  beer.imageUrl!,
                  scale: beer.name == 'Buzz' || beer.name == 'Berliner Weisse With Yuzu - B-Sides' ? 7 : 9,
                ),
                Padding(
                  padding: EdgeInsets.all(5.w),
                  child: Text(
                    beer.name!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 140.h,
                left: 125.w,
                child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(150),bottomLeft: Radius.circular(50))
              ),
              height: 70.h,
              width: 0.2.sw,
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Icon(Icons.arrow_forward_rounded,color: white,size: 25.sp,),
                  ),
            ))
          ],
        ),
      ),
    );
  }
}
