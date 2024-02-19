import 'package:dio/dio.dart';
import 'package:doctors_app/core/network/api_service.dart';
import 'package:doctors_app/core/network/dio_factory.dart';
import 'package:doctors_app/features/auth/login/data/repo/login_repo.dart';
import 'package:doctors_app/features/auth/sign_up/data/repo/sign_up_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt(){
    Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(apiService: getIt()));

  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));

}