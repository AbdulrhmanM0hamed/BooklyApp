import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/book_model/repos/home_repo.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFutureBooks() async {
try {
      final data = await apiService.get(endpoint: 'volumes?q=subject:programming&filtering=free-ebooks');
      if (data['items'] != null) {
        List<BookModel> books = (data['items'] as List).map((item) => BookModel.fromJson(item)).toList();
        return Right(books);
      } else {
        return Left(ServerFailure(errMessage: "Something Error"));
      }
    } catch (e) {
      if (e is DioException){
          return Left(ServerFailure.fromDioError(e));
      }
    }
    return Left(ServerFailure(errMessage: "Unexpected Error"));  
    
    
    }
  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewestBooks() async {
    try {
      final data = await apiService.get(endpoint: 'volumes?q=subject:programming&filtering=free-ebooks');
      if (data['items'] != null) {
        List<BookModel> books = (data['items'] as List).map((item) => BookModel.fromJson(item)).toList();
        return Right(books);
      } else {
        return Left(ServerFailure(errMessage: "Something Error"));
      }
    } catch (e) {
      if (e is DioException){
          return Left(ServerFailure.fromDioError(e));
      }
    }
    return Left(ServerFailure(errMessage: "Unexpected Error"));

  }
  
 
}
