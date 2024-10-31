import 'package:dio/src/options.dart';
import 'package:dio/src/response.dart';
import 'package:ricky_and_morty_test_task/core/dio_client/dio_client.dart';

final class DefaultDioClient extends DioClient {
  DefaultDioClient({required super.dio});

  @override
  Future<Response> delete(String path, {Object? data, Map<String, dynamic>? queryParameters, Options? options}) async{
    return await deleteBase(
      path,
      queryParameters: queryParameters,
      options: options,
    );
  }

  @override
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters, Options? options}) async{
    return await getBase(
      path,
      queryParameters: queryParameters,
      options: options,
    );
  }

  @override
  Future<Response> post(String path, {Object? data, Map<String, dynamic>? queryParameters, Options? options}) async{
    return await postBase(
      path,
      queryParameters: queryParameters,
      options: options,
    );
  }

  @override
  Future<Response> put(String path, {Object? data, Map<String, dynamic>? queryParameters, Options? options}) async{
    return await putBase(
      path,
      queryParameters: queryParameters,
      options: options,
    );
  }

}