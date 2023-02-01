import 'package:emag/theme/theme_constants.dart';
import 'package:emag/widgets/EventWidget.dart';
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.white, body: cont());
  }
}

class cont extends StatefulWidget {
  const cont({Key? key}) : super(key: key);

  @override
  State<cont> createState() => _contState();
}

class _contState extends State<cont> {
  String eventTitle =
      'Guest Lecture of Future of WorkGuest Lecture of Future of Work Guest Lecture of Future of WorkGuest Lecture of Future of WorkGuest Lecture of Future of Work';
  bool isreadmore = false;
  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: ScrollController(initialScrollOffset: 10.0),
      thumbColor: Colors.blue,
      // isAlwaysShown: true, //always show scrollbar
      thickness: 7, //width of scrollbar
      radius: const Radius.circular(50), //corner radius of scrollbar
      scrollbarOrientation: ScrollbarOrientation.right,
      crossAxisMargin: 2,

      child: SingleChildScrollView(
        controller: ScrollController(initialScrollOffset: 10.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: SingleChildScrollView(
              controller: ScrollController(initialScrollOffset: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  EventWidget(
                    eventTitle: 'eventssTitle',
                    eventContent:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  EventWidget(
                    eventTitle: 'eventssTitle',
                    eventContent:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
