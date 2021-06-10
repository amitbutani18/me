import 'package:flutter/material.dart';

import 'Dashboard.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme:
              ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
          home: Dashboard(),
        );
      },
    );
  }
}
