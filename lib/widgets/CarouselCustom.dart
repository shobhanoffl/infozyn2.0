import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

class CarouselCustom extends StatelessWidget {
  final imageList = ['assets/images/falls.jpg', 'assets/images/landscape.jpg'];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.45,
      width: screenWidth,
      child: Flexible(
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              imageList[index],
              fit: BoxFit.contain,
            );
          },
          // onTap: (index) {
          //  v2.0.1_AddOns -> Feature to View this Picture in Zoom & Fullscreen
          // },
          itemHeight: 100,
          indicatorLayout: PageIndicatorLayout.SCALE,
          itemCount: imageList.length,
          pagination: const SwiperPagination(),
          control: const SwiperControl(),
        ),
      ),
    );
  }
}
