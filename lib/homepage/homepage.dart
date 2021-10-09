import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:head_first_ooad/homepage/homepage_func.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget chap(
      {var size,
      List<Color>? colors,
      String? icon,
      String? chapName,
      void Function()? onTap}) {
    return InkWell(
      onTap: onTap!,
      child: Container(
        height: size.height * 0.1,
        width: size.width,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: colors!),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: size.height * 0.03,
              backgroundColor: Colors.white,
              child: Text(
                icon!,
                style: TextStyle(fontSize: size.height * 0.03),
              ),
            ),
            Text(
              chapName!,
              style:
                  TextStyle(fontSize: size.height * 0.018, color: Colors.white),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: size.height * 0.02,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'OOA&D Chapters',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: size == null
          ? Center(
              child: SizedBox(
                  height: 20, width: 20, child: CircularProgressIndicator()),
            )
          : Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 32),
              child: SizedBox(
                height: size.height,
                width: size.width,
                child: ListView(
                  children: [
                    /// CHAPTER 1
                    chap(
                      size: size,
                      colors: [
                        Color(0xffF7534F),
                        Color(0xffD9477B),
                        Color(0xffA55093),
                      ],
                      icon: '🎸',
                      chapName: 'Guitar System',
                      onTap: () {},
                    ),

                    /// CHAPTER 2
                    chap(
                        size: size,
                        colors: [
                          Color(0xffF7A34F),
                          Color(0xffEF7C71),
                          Color(0xffC6698D),
                        ],
                        icon: '🚪',
                        chapName: 'Dog Door',
                        onTap: () => dogDoorFunc(context)),
                  ],
                ),
              ),
            ),
      backgroundColor: Colors.grey.shade100,
    );
  }
}
