import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/book_model/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFutureBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFutureBooks();
    print(result);  // تأكد من طباعة النتيجة للتحقق

    result.fold(
      (failure) {
        emit(FeatureBooksFailure(errMessage: failure.errMessage));
      },
      (books) {
        // هنا يجب استخدام emit لإرسال حالة النجاح
        emit(FeatureBooksSuccess(books: books));
      },
    );
  }
}