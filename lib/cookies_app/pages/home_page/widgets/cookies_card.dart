import 'package:flutter/material.dart';
import 'package:flutter_challenges/cookies_app/pages/home_page/models/cookies_model.dart';
import 'package:flutter_challenges/cookies_app/pages/home_page/widgets/premium.dart';
import 'package:flutter_challenges/cookies_app/styles/colors.dart';

import 'container_arrow.dart';

class CookiesCard extends StatelessWidget {
  const CookiesCard({super.key, required this.cookie});
  final Cookie cookie;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cookieSize = size.height * 0.16;
    var cardSize = size.height * 0.18;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: cardSize,
          width: cardSize,
          decoration: const BoxDecoration(
            color: CookiesAppColors.buttonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
              bottomLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16.0, top: 32, right: 32, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  cookie.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Premium(),
                Text(
                  cookie.price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -(cookieSize - 32),
          left: (cardSize - cookieSize) / 2,
          child: SizedBox(
            height: cookieSize,
            width: cookieSize,
            child: Image.asset(cookie.image),
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
            child: ContainerArrow()),
      ],
    );
  }
}
