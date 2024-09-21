import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/book_model/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failuer, List<BookModel>>> fetchFutureBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchVestSellerBooks() {
    throw UnimplementedError();
  }
  
}