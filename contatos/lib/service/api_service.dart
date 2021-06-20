import 'package:contatos/service/model/contact_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://60c8b73dafc88600179f7da1.mockapi.io/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/contacts")
  Future<List<ContactDTO>> getListContacts();
}

