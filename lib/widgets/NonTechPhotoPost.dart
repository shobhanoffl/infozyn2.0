import 'package:flutter/material.dart';
import '../theme/theme_constants.dart';
import '../theme/theme_styles.dart';
import 'CarouselCustom.dart';

class NonTechPhotoPost extends StatelessWidget {
  String studName;
  String studDept;

  NonTechPhotoPost({
    super.key,
    required this.studName,
    //required this.subtitle,
    //required this.link,
    required this.studDept,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 35),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                          studName.length < 13
                              // ? '${studName.substring(0, 24)}...'
                              ? studName
                              : '${studName.substring(0, 13)}...',
                          // : studName,
                          style: tileHead,
                          overflow: TextOverflow.ellipsis),
                      Text(' - $studDept',
                          style: tileSubHead, overflow: TextOverflow.ellipsis),
                    ],
                  ),
                  const Text('01/01/2025', style: nonTechArticleDate),
                ]),
          ),
          CarouselCustom(),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Beautiful Nature!Beautiful Nature! Beautiful',
                // NoteToDevelopers - Have a length limit of 44 Chars for Caption
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: fontColorDark,
                    fontSize: fontSizeHeading2),
              )
            ],
          )
        ],
      ),
    );
  }
}
