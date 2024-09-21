import 'package:dio/dio.dart';

class ApiService
{
  final  _baseUrl = "https://www.googleapis.com/books/v1/"  ; 
  Dio dio = Dio();
   
  Future <Map<dynamic , String>> get({required String endpoint}) async {

    var response = await  dio.get('$_baseUrl$endpoint');
    return response.data ; 
 

  }



}