import 'package:emag/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:emag/widgets/NonTechArticles.dart';
import 'package:emag/widgets/TechArticles.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              child: Column(
                children: [
                  Material(
                    // elevation: 5,
                    child: Container(
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(135, 162, 242, 1),
                      ),
                      child: const TabBar(
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Colors.white),
                        indicator: BoxDecoration(
                            //  v2.0.1_AddOns -> Add this borderRadius and shadows
                            //  to both tabs dynamically as in documentation
                            // borderRadius: BorderRadius.only(
                            //   bottomRight: Radius.circular(6),
                            //   topRight: Radius.circular(6),
                            // ),
                            color: Color.fromRGBO(103, 138, 247, 1),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(51, 0, 0, 0),
                                spreadRadius: 0,
                                blurRadius: 8,
                                offset: Offset(4, 0),
                              )
                            ]),
                        tabs: [
                          Tab(
                            text: 'Technical',
                          ),
                          Tab(
                            text: 'Non-Techinal',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(9, 10, 9, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                                child: DecoratedBox(
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.5,
                                          style: BorderStyle.solid,
                                          color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                  ),
                                  child: SizedBox(
                                    height: 45,
                                    width: 180,
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: DropdownButtonFormField<String>(
                                        decoration:
                                            const InputDecoration.collapsed(
                                                hintText: ''),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),

                                        //elevation: 5,
                                        style: const TextStyle(
                                            color: Colors.black),

                                        items: <String>[
                                          '2011-2012',
                                          '2012-2013',
                                          '2013-2014',
                                          '2014-2015',
                                          '2015-2016',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        hint: const Text(
                                          "2011-2012",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        onChanged: (value) {
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = 1;
                                    });
                                  },
                                ),
                                const Text(
                                  'Odd',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: fontColorDark),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = 2;
                                    });
                                  },
                                ),
                                const Text(
                                  'Even',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: fontColorDark),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                        Tab1(),
                        Tab2(),
                      ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
