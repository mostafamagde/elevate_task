import 'package:elevate_task/features/home/data/models/product_model.dart';

import '../../../../core/errors/errors.dart';
import 'package:dartz/dartz.dart';
abstract class HomeRepo {
  Future<Either<Errors, List<Product>>> getProducts();
}