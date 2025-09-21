import 'package:dio/dio.dart';
import 'package:moviesbox/src/core/api/api_constants.dart';

class Basedatacenter {
  late final Dio dio;

  Basedatacenter() {
    final BaseOptions options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    );

    dio = Dio(options);
    dio.interceptors.addAll([
      RegionLanguageInterceptor(language: 'en-US'),
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.queryParameters['api_key'] = ApiConstants.apiKey;
          handler.next(options);
        },
      ),
      LogInterceptor(request: true, requestBody: true, responseBody: true),
    ]);
  }
}

class RegionLanguageInterceptor extends Interceptor {
  final String language;

  RegionLanguageInterceptor({required this.language});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Inject language & region if not already set
    options.queryParameters.putIfAbsent('language', () => language);

    super.onRequest(options, handler);
  }
}
