import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:who_host_this/view/home_ios.dart';
import 'package:who_host_this/view/home_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? const CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: HomeIos(),
          )
        : const MaterialApp(
            home: HomeScreen(),
          );
  }
}
