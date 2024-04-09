import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/failures/products_failure.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/products_model/product.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/products_model/products_model.dart';
import 'package:rolla_zadatak/features/products_page/domain/repositories/product_details_repository_interface.dart';
import 'package:rolla_zadatak/features/products_page/infrastructure/product_details_repository.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';

@injectable
class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final IProductDetailsRepositoryInterface productDetailsRepositoryInterface = ProductDetailsRepository(); // = ProductDetailsRepository();

  ProductDetailsBloc() : super(ProductDetailsState.initial()) {
    on<_GetProducts>((event, emit) async {
      // TODO: implement event handler
      // var result = await exposureRepositoryInterface.getProducts();
      
      var skip = 0;
      const limit = 10;
      if (state.curPage != 1) {
        skip = state.curPage * 10;
      } else {
        emit(state.copyWith(isLoading: true));
      }

      final result = await productDetailsRepositoryInterface.getProducts(skip, limit);

      result.fold((l) => {
        emit(state.copyWith(isLoading: false, failureOrSuccessOption: optionOf(result)))
      }, (productsModel) {
        List<Product> newProducts = [];

        if (productsModel.products != null) {
          newProducts = productsModel.products!;
        }

        emit(state.copyWith(isLoading: false, failureOrSuccessOption: optionOf(result), curPage: state.curPage + 1, products: [...state.products, ...newProducts]));
      });

      // result.fold((l) => emit(ExposuresState.error(failure: ExposureFailure.serverError())), (r) => emit(ExposuresState.loaded(exposures: r)));
    });
  }
}
