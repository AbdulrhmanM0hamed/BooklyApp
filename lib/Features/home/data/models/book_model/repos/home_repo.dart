import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
  Future<Either<Failuer ,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failuer ,List<BookModel>>> fetchFutureBooks();
  Future<Either<Failuer ,List<BookModel>>> fetchSimialrBooks(String category );


 
}