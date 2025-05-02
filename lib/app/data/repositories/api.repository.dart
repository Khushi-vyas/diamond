import 'package:diamond_data/app/services/storage_service.dart';
import 'package:diamond_data/config/dio.config.dart';
import 'package:diamond_data/utils/constants/app.constants.dart';

class ApiRepository {
  ApiRepository._();

  static final instance = ApiRepository._();

  final _dio = DioConfig.instance.getInstance();

  Future<dynamic> login(String customerId, String password) async {
    try {
      final response = await _dio.post(
        "${AppConstants.loginService}/login",
        data: {
          "CustomerId": customerId,
          "Password": password,
        },
      );
      //  print(response.data);
      return response.data;
    } catch (e) {
      print("Error - $e");
      rethrow;
    }
  }

  Future<dynamic> getAllDiamondData({int page=1, int pageSize=10 }) async {
    try {
      final response = await _dio.get(
        "${AppConstants.diamondDataService}/all?customerId=${StorageService.instance.fetch(AppConstants.userIdKey)}&page=$page&pageSize=$pageSize",
       
      );
      
      return response.data;
    } catch (e) {
      print("Error - $e");
      rethrow;
    }
  }

}
