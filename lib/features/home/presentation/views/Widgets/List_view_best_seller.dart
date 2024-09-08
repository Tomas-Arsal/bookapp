import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/custom_error_widget.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import '../../manger/newest_books_cubit/newset_books_cubit.dart';
import 'best_seller_listView_item.dart';

class ListViewOfBestSeller extends StatelessWidget {
  const ListViewOfBestSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
        builder: (BuildContext context, state) {
      if (state is NewsetBooksSuccess) {
        {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) =>  BestSellerListViewItem(bookModel:  state.books[index],),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: state.books.length),
          );
        }
      } else if (state is NewsetBooksFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
