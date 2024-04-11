part of 'product_details_bloc.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState(
      {required bool isLoading,
      required Option<Either<ProductsFailure, ProductsModel>>
          failureOrSuccessOption,
      required int curPage,
      required bool loadingNextPage,
      required List<Product> products,
      User? user,
      required String query}) = _ProductDetailsState;

  factory ProductDetailsState.initial() => ProductDetailsState(
      isLoading: false, failureOrSuccessOption: Option.none(), curPage: 1, loadingNextPage: false, products: [], query: '',);
}
