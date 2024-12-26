import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo_impl.dart';

class ServiceLocator {
  static final GetIt getIt = GetIt.instance;

  static Future<void> setup() async {
    getIt.registerSingleton<Dio>(Dio());
    getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<Dio>()));

  }
}
