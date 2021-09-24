import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Header extends StatelessWidget {
  final Size screenSize;

   Header(this.screenSize);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Discover the world’s top',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Text(
              'designers &',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              'creatives',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ],
        ),
        Container(
          child: Lottie.asset(
            'assets/images/designer.json',
            repeat: false,
            width: screenSize.width / 2.3,
          ),
        ),
      ],
    );
  }
}
