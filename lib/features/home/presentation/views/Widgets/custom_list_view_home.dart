
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/Assets.dart';
import '../../../../../core/utils/widgets/custom_error_widget.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../manger/featured_books/featured_books_cubit.dart';
import 'book_details_view.dart';
import 'custom_list_view_item.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      BookDetailsView.routeBookDeatailsView ,
                      arguments: state.books[index],
                    ) ;
                  },
                  child: ListViewItemOfHome(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 15,
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeaturedBooksError) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
