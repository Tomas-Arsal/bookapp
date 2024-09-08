import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetshNewBook() async {
    var result = await homeRepo.fetchFeaturedBooks() ;
    emit(FeaturedBooksLoading());
    result.fold((failure) {
      emit(FeaturedBooksError(failure.errMessage));
      }, (books) {
      emit(FeaturedBooksSuccess(books));
    });

  }
}
