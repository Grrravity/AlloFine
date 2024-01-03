import 'package:allofine/data/client/utils/rest_api_logger.dart';
import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  DioInterceptor({required this.clientName, this.injectQueryParameter});

  final String clientName;
  final Map<String, String>? injectQueryParameter;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final queryParams = {...options.uri.queryParameters};
    if (injectQueryParameter != null) {
      queryParams.addAll(injectQueryParameter!);
    }
    options.queryParameters = queryParams;
    DioApiLogger(clientName).onRequestLogger(options);

    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    DioApiLogger(clientName).onResponseLogger(response);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    DioApiLogger(clientName).onErrorLogger(err);
    super.onError(err, handler);
  }
}
