import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioConfig {
  DioConfig._();

  static final instance = DioConfig._();

  // static const String baseUrl = "http://wellcome.co.in/ChetanAPI/";
  static const String baseUrl = "http://localhost:5012/";

  //"http://192.168.29.19/"; //"http://wellcome.co.in/ChetanAPI/";
  //do not forget to turn on Wifi!!!!!!!!!

  // static const String baseUrl =
  //     "http://staging-zalon-alb-1342104262.ap-south-1.elb.amazonaws.com";
  static const int connectionTimeout = 30000;
  static const int receiveTimeout = 30000;

  PrettyDioLogger prettyDioLogger() {
    return PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    );
  }

  BaseOptions options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(milliseconds: connectionTimeout),
    receiveTimeout: const Duration(milliseconds: receiveTimeout),
    responseType: ResponseType.json,
  );

  Dio dio = Dio();

  Dio getInstance() {
    dio.interceptors.add(prettyDioLogger());
    // dio.interceptors
    //     .add(QueuedInterceptorsWrapper(onRequest: (options, handler) {
    //   options.headers["x-access-token"] =
    //       "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYmZhMWU1YWZlMzEyOWU5MDExNmI3YiIsIm1vYmlsZSI6Ijg0NDc3NzkzMTEiLCJpYXQiOjE2ODA2OTEyMjN9.32GpyhdLU_UYhWsxs3wazjRImsPEBiLnGzzklJsh8Fc";
    //   return handler.next(options);
    // },
    //));
    dio.options = options;
    return dio;
  }
}
