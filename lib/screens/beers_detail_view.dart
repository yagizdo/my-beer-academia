import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_beer_academia/constants/app_colors.dart';
import 'package:my_beer_academia/models/beer.dart';

class BeerDetailView extends StatelessWidget {
  BeerDetailView({Key? key, required this.beer}) : super(key: key);

  Beer beer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      appBar: AppBar(
        title: Text(beer.name!),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        beer.name!,
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w700,fontSize: 27.sp),
                      ),
                      Text(beer.tagline!,style: TextStyle(color: black.withOpacity(0.4),fontSize: 14.sp,fontWeight: FontWeight.w700),),

                      SizedBox(height: 30.h,),

                      Text(
                        beer.firstBrewed!,
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w700,fontSize: 27.sp),
                      ),
                      Text('First Brewed',style: TextStyle(color: black.withOpacity(0.4),fontSize: 14.sp,fontWeight: FontWeight.w700),),

                      SizedBox(height: 30.h,),

                      Text(
                        '${beer.ph!}',
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w700,fontSize: 27.sp),
                      ),
                      Text('PH',style: TextStyle(color: black.withOpacity(0.4),fontSize: 14.sp,fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star,color: black,size: 22.w,),
                            SizedBox(width: 5.w,),
                            Text('${beer.abv!}',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
                          ],
                        ),

                        SizedBox(height: 20.h,),

                        Text('Description',style: TextStyle(color: black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                        SizedBox(height: 5.h,),
                        Text(beer.description!),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 300.h,
              right: 40.w,
              child: Image.network(
                beer.imageUrl!,
                scale: 2.7,
              ))
        ],
      ),
    );
  }
}
