part of 'get_poducts_cubit.dart';

@immutable
sealed class GetProductsState {}

final class GetProductsInitial extends GetProductsState {}
final class GetProductsLoading extends GetProductsState {}
final class GetProductsSuccess extends GetProductsState {
  final List<Product> products;

   GetProductsSuccess({required this.products });
}
final class GetProductsFailed extends GetProductsState {
  final String error;

   GetProductsFailed({required this.error });
}
