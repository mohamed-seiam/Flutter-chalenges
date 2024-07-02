import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../styles/colors.dart';

class Premium extends StatelessWidget {
  const Premium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
         FontAwesomeIcons.crown,
          color: CookiesAppColors.orange,
          size: 16,
        ),
        SizedBox(width: 8,),
        Text(
          'Premium',
          style: TextStyle(
            color: CookiesAppColors.orange,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
