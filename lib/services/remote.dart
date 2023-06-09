import 'package:dio/dio.dart';

class Remote {
  Map<String, String> headers;

  static String baseUrl = "https://api.ibaity.com/v1";

  final http = Dio();

  Remote(this.headers){
    http.options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      contentType: "application/json",
      headers: headers,
    );
  }

  Remote.customOptions(this.headers, {required BaseOptions baseOptions}){
    http.options = baseOptions;
  }

  Remote.customContentType(this.headers, {required String contentType}){
    http.options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      contentType: contentType,
      headers: headers,
    );
  }

  Future<Map?> request({required String method, required String path, Map<String, dynamic>? queryParameters, Map<String, dynamic>? payload}) async {
    var res = await http.request(
      "$baseUrl$path",
      options: Options(method: method),
      queryParameters: queryParameters,
      data: payload
    );

    // log(res.data.toString());

    return {
      'status_code': res.statusCode,
      'body': res.data
    };
  }
}