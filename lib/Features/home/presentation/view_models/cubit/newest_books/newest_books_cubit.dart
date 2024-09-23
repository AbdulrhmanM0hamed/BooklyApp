import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/repos/home_repo.dart';
import 'package:bookly_app/Features/home/presentation/view_models/cubit/feature_books/feature_books_cubit.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;  

  Future<void> fetchNewestBooks() async{
    emit(FeatureBooksLoading() as NewestBooksState);
     var result = await homeRepo.fetchFutureBooks()  ;

     result.fold((failure) {
      emit(FeatureBooksFailure(errMessage: failure.errMessage) as NewestBooksState) ;

     }, (books) {
      FeatureBooksSuccess(books: books) ;
     }) ; 

  }


}
