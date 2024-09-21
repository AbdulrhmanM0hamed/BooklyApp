import 'package:dio/dio.dart';

class ApiService
{
  final  _baseUrl = "https://www.googleapis.com/books/v1/"  ; 
  Dio _dio = Dio();
   
  Future <Map<dynamic , String>> get({required String endpoint}) async {

    var response = await  _dio.get('$_baseUrl$endpoint');
    return response.data ; 
 

  }



}