import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/Styles.dart';
import '../../../../home/presentation/views/Widgets/best_seller_listView_item.dart';
import 'custom_search_text_field.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
           child:   Text('data'),

        // BestSellerListViewItem(bookModel: null,),
        );
      },
    );
  }
}
