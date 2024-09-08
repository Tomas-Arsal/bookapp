import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/Styles.dart';


class BookRating extends StatelessWidget {
  const BookRating({Key? key, required this.count,  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center, required this.rating}) : super(key: key);
  final int count;
  final num rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 7,
        ),
         Text(
           rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '($count)',
          style: Styles.textStyle14.copyWith(
            color: Colors.grey
          ),
        ),
      ],
    );
  }
}
