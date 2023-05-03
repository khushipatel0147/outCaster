import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_ui/provider/setting_provider.dart';
import 'package:photo_ui/view/view_android.dart';
import 'package:photo_ui/view/view_ios.dart';
import 'package:provider/provider.dart';

void main()
{

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => SettinsgProvider(),)
    ],
    child: Platform.isAndroid?MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Setting_android(),
      },
    ):CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(p0) => Setting_ios(),
    },
  )
  ));
}