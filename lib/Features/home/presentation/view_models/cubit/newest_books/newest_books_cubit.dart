import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/book_model/repos/home_repo.dart';
import 'package:bookly_app/Features/home/presentation/view_models/cubit/feature_books/feature_books_cubit.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;  

  Future<void> fetchNewestBooks() async{
    emit( NewestBooksLoading());
     var result = await homeRepo.fetchNewestBooks()  ;

     result.fold((failure) {
      emit(NewestBooksFailure(errMessage: failure.errMessage) ) ;

     }, (books) {
    emit(NewestBooksSuccess(books: books))   ;
     }) ; 

  }


}
