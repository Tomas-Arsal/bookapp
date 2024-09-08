part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {
  const FeaturedBooksState();
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books ;
  const FeaturedBooksSuccess(this.books) ;
}

class FeaturedBooksError extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksError(this.errMessage);
}
