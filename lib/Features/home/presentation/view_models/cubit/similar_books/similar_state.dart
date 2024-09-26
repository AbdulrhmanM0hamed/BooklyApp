part of 'similar_cubit.dart';

sealed class SimilarState extends Equatable {
  const SimilarState();

  @override
  List<Object> get props => [];
}

final class SimilarInitial extends SimilarState {}
final class SimilarLoadingState extends SimilarState {}
final class SimilarSuccesState extends SimilarState {
  final List<BookModel> books ; 
   const SimilarSuccesState ({required this.books}) ; 

}


final class SimilarFailureState extends SimilarState {
  final String errMessage ;

  const SimilarFailureState({required this.errMessage}); 

}




