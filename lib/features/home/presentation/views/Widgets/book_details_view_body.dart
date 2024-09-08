
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/Styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_action.dart';
import 'book_details_view_body_app_bar.dart';
import 'book_rating.dart';
import 'custom_list_view_item.dart';
import 'listView_of_book_like_it.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.book}) : super(key: key);

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BookDetailsBodyAppBar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .3),
          child: ListViewItemOfHome(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            book.volumeInfo.title!,
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: .7,
          child: Center(
            child: Text(
              book.volumeInfo.authors?[0] ?? '',
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        BookRating(
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        const BookAction(),
        const SizedBox(
          height: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListViewOfLikeIt(),
          ],
        ),
      ],
    );
  }
}
