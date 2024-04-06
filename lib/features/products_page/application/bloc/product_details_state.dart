part of 'product_details_bloc.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState({
    required bool isLoading,
    required Option<Either<ProductsFailure, Unit>> failureOrSuccessOption
  }) = _ProductDetailsState;

  factory ProductDetailsState.initial() =>
      ProductDetailsState(
          isLoading: false,
          failureOrSuccessOption: Option.none()
      );
}
