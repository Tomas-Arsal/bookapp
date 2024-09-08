
import 'package:bookapp/features/home/presentation/views/Widgets/price_book.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/Styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_details_view.dart';
import 'custom_book_image.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key, required this.bookModel})
      : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          BookDetailsView.routeBookDeatailsView,
          arguments: bookModel,
        );
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookModel.volumeInfo.authors![0],
                        style: Styles.textStyle14,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      PricingBook(
                        rating:
                            bookModel.volumeInfo.averageRating?.round() ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
