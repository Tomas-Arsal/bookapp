import 'package:bookapp/features/search/presentation/view/widgets/search_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const String routeSearchScreenBody  = '/routeSearchScreenBody' ;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SearchScreenBody(),
    ));
  }
}
