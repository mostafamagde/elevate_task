import 'package:dartz/dartz.dart';

import 'package:elevate_task/core/errors/errors.dart';
import 'package:dio/dio.dart';
import 'package:elevate_task/features/home/data/models/product_model.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final Dio _dio;

   HomeRepoImpl(this._dio);




  @override
  Future<Either<Errors, List<Product>>> getProducts()async {
    List<Product> products = [];
    try {
      final response = await _dio.get("https://fakestoreapi.com/products");
      products =
          (response.data as List).map((e) => Product.fromJson(e)).toList();

      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerError(e.message ?? "failed to get products"));
      } else {
        return left(ServerError("Something went wrong"));
      }
    }
  }



}
