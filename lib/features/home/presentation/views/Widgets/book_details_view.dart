import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../manger/smila_books_cubit/similar_books_cubit.dart';
import 'book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  BookDetailsView({
    Key? key,
  }) : super(key: key);
  static const String routeBookDeatailsView = '/bookdeatailsview';

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  Widget build(BuildContext context) {
    final bookModel = ModalRoute.of(context)!.settings.arguments as BookModel;

    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: bookModel.volumeInfo.categories![0]);
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
          book: bookModel,
        ),
      ),
    );
  }
}
