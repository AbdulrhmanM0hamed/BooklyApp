import 'package:bookly_app/Features/home/data/models/book_model/repos/home%20repo_impl.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocater() {
    getIt.registerSingleton<ApiService>(ApiService(Dio())); 

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>()
  ));
}
