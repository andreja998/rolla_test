part of 'product_details_bloc.dart';

@freezed
class ProductDetailsEvent with _$ProductDetailsEvent {
  const factory ProductDetailsEvent.getProducts() = _GetProducts;
  const factory ProductDetailsEvent.getQueriedProducts(String query, bool nextPage) = _GetQueriedProducts;
}
