import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/book_model/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_state.dart';

class SimilarCubit extends Cubit<SimilarState> {
  SimilarCubit(this.homeRepo) : super(SimilarInitial() ,);
final HomeRepo homeRepo ; 

   Future<void> fetchSimilarBooks(String category) async {
    emit(SimilarLoadingState());
    final result = await homeRepo.fetchSimialrBooks(category);

     result.fold((failure) {
      emit(SimilarFailureState(errMessage: failure.errMessage) ) ;

     }, (books) {
    emit(SimilarSuccesState(books: books))   ;
     }) ; 

  }
}
