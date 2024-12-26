import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/product_model.dart';
import '../../data/repos/home_repo.dart';

part 'get_poducts_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit(this._homeRepo) : super(GetProductsInitial());
  final HomeRepo _homeRepo;

  Future<void> getProducts() async {
    emit(GetProductsLoading());
    final response = await _homeRepo.getProducts();
    response.fold(
      (failure) => emit(
        GetProductsFailed(error: failure.errMessage),
      ),
      (products) => emit(
        GetProductsSuccess(products: products),
      ),
    );
  }
}
