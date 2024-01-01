import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive_adaptive/desktop.dart';
import 'package:responsive_adaptive/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        //  وهنا نفس الكلام وكلن الفرق  ان هنا يتم عمل اي فنكشن تاني زي  تغير حجم الخط مع التكبير والتصغير وغيره
        home: Builder(
          builder: (context) {
            if (MediaQuery.of(context).size.width.toInt() <= 560)
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                      // textScaleFactor: 0.5,
                      ),
                  child: mobileScreen());
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 1.5,
                ),
                child: desktopScreen());
          },
        )
//  هنا يتم اتباديل بين الموبيل والديسكتوب
        // LayoutBuilder(
        //   builder: (BuildContext context, BoxConstraints constraints) {
        //     // print(constraints.minWidth.toInt());
        //     if (constraints.minWidth.toInt() < 560) return mobileScreen();
        //     return desktopScreen();
        //   },
        // ),
        );
  }
}
