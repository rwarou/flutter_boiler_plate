import 'package:dio/dio.dart';

class BaseApi {
  static const String baseUrl = 'https://application.mfast.co.kr';
  final Dio dio = Dio(
    BaseOptions(
      responseType: ResponseType.json,
      baseUrl: baseUrl,
    ),
  );

  BaseApi() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) async {},
        onRequest: (requestOptions, handler) {},
        onResponse: (response, handler) {
          return handler.next(response);
        },
      ),
    );
  }

  Future<void> _refreshToken() async {}

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    return dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
