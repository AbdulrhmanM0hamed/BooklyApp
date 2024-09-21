import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/book_model/repos/home_repo.dart';
import 'package:bookly_app/core/api_service.dart';
import 'package:bookly_app/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFutureBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewestBooks() async {
    try {
      // طلب البيانات من الـ API
      final data = await apiService.get(endpoint: 'volumes?q=subject:programming&sorting=newest&filtering=free-ebooks');
      if (data['items'] != null) {
        List<BookModel> books = (data['items'] as List).map((item) => BookModel.fromJson(item)).toList();
        return Right(books);
      } else {
        return Left(ServerFailure());
      }
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
