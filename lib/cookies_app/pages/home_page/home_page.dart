import 'package:flutter/material.dart';
import 'package:flutter_challenges/cookies_app/pages/home_page/widgets/cart.dart';
import 'package:flutter_challenges/cookies_app/pages/home_page/widgets/cookies_bar.dart';
import 'package:flutter_challenges/cookies_app/pages/home_page/widgets/cookies_card.dart';
import 'package:flutter_challenges/cookies_app/pages/home_page/widgets/horizontal_cokkie_card.dart';
import 'package:flutter_challenges/cookies_app/pages/home_page/widgets/offers_bar.dart';
import 'package:flutter_challenges/cookies_app/pages/home_page/widgets/personal_info.dart';
import 'package:flutter_challenges/cookies_app/styles/colors.dart';

import 'models/cookies_model.dart';
import 'widgets/avatar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CookiesAppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
          child: Column(
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Avatar(),
                  SizedBox(width: 16),
                  PersonalInfo(),
                  Spacer(),
                  Cart(),
                ],
              ),
              const CookiesBar(),
              SizedBox(
                height: size.height * 0.13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: cookies
                    .map((cookie) => CookiesCard(
                          cookie: cookie,
                        ))
                    .toList(),
              ),
              const OffersBar(),
              const HorizontalCookieCard(),
            ],
          ),
        ),
      ),
    );
  }
}
