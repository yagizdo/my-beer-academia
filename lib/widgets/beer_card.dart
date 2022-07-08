import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_beer_academia/constants/app_colors.dart';
import 'package:my_beer_academia/models/beer.dart';

class BeerCard extends StatelessWidget {
  BeerCard({Key? key, required this.beer}) : super(key: key);
  Beer beer;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Card(
          color: white.withOpacity(0.45),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    // Aling will force the container to occupy only the space it needs.
                    child: Align(
                      child: Container(
                        alignment: Alignment.topLeft,
                        height: 150.h,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Image.network(
                            beer.imageUrl!,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Column(
                           mainAxisSize: MainAxisSize.min,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text('Name : ${beer.name!}'),

                             SizedBox(height: 5.h,),
                             Text('Description : ${beer.description}',textAlign: TextAlign.start,),

                             SizedBox(height: 20.h,),
                             const Text('For more details => Click!')
                           ],
                         ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
