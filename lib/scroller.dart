import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Scroller extends StatefulWidget {
  const Scroller({super.key});

  @override
  State<Scroller> createState() => _ScrollerState();
}

class _ScrollerState extends State<Scroller> {
  List<String> image = [
    'assets/s1.jpg',
    'assets/s2.jpg',
    'assets/s3.jpg',
    'assets/s4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Screoller Page')),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: 4,
                itemBuilder: ((context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.sp),
                        child: Image.asset(image[index], fit: BoxFit.cover),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
