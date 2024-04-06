import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/failures/products_failure.dart';
import 'package:rolla_zadatak/features/products_page/domain/repositories/product_details_repository_interface.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';

class ProductDetailsBloc extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  
  // final IProductDetailsRepositoryInterface productDetailsRepositoryInterface; // = ProductDetailsRepository();
  
  ProductDetailsBloc() : super(ProductDetailsState.initial()) {
    on<_GetProducts>((event, emit) async {
      // TODO: implement event handler
      // var result = await exposureRepositoryInterface.getProducts();

      // result.fold((l) => emit(ExposuresState.error(failure: ExposureFailure.serverError())), (r) => emit(ExposuresState.loaded(exposures: r)));
    });
  }
}
