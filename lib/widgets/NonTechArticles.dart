import 'package:emag/widgets/NonTechPhotoPost.dart';
import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  static const studName = 'S.Joshua';
  static const studDept = '2nd Year IT';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView(
        children: [
          NonTechPhotoPost(studName: 'S.Joshua', studDept: '2nd Year IT'),
          NonTechPhotoPost(studName: 'S.Joshua', studDept: '2nd Year IT')
        ],
      ),
    );
  }
}
