import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/Styles.dart';
import 'book_rating.dart';

class PricingBook extends StatelessWidget {
  const PricingBook({Key? key,  this.mainAxisAlignment= MainAxisAlignment.start, required this.rating, required this.count}) : super(key: key);

  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          rating.toString(),
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
      const Spacer() ,
        BookRating(count: count,  rating: rating,),
      ],
    );
  }
}
