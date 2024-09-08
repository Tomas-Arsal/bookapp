
import 'package:bookapp/features/home/data/repo/home_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'core/utils/service_locator.dart';
import 'features/home/data/repo/home_repo_imp.dart';
import 'features/home/presentation/manger/featured_books/featured_books_cubit.dart';
import 'features/home/presentation/manger/newest_books_cubit/newset_books_cubit.dart';
import 'features/home/presentation/manger/smila_books_cubit/similar_books_cubit.dart';
import 'features/home/presentation/views/Widgets/book_details_view.dart';
import 'features/search/presentation/view/search_screen.dart';
import 'features/splash/splash_view.dart';

void main() {
  setupServiceLocator();

  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetshNewBook(),
        ),
        BlocProvider(create: (context) {
          return NewsetBooksCubit(getIt.get<HomeRepoImpl>() as HomeRepo)
            ..fetchNewestBooks();
        }),
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
          routes: {
            '/': (BuildContext context) => const SplashView(),
            BookDetailsView.routeBookDeatailsView: (context) => BlocProvider(
                  create: (context) =>
                      SimilarBooksCubit(getIt.get<HomeRepoImpl>() as HomeRepo),
                  child: BookDetailsView(),
                ),
            SearchScreen.routeSearchScreenBody: (context) =>
                const SearchScreen(),
          }),
    );
  }
}
