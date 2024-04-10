
import 'package:dio/dio.dart';
import 'package:fpdart/src/unit.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:rolla_zadatak/config/api_constants.dart';
import 'package:rolla_zadatak/config/extensions/dio_extension.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/failures/products_failure.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/products_model/products_model.dart';
import 'package:rolla_zadatak/features/products_page/domain/repositories/product_details_repository_interface.dart';
import 'package:rolla_zadatak/injection.dart';

@LazySingleton(as: IProductDetailsRepositoryInterface)
class ProductDetailsRepository implements IProductDetailsRepositoryInterface {
  @override
  Future<Either<ProductsFailure, ProductsModel>> getProducts(int skip, int limit) async {
    final dio = getIt<Dio>();

    Response response = await dio.get(ApiConstants.fetchNonSearchProducts, queryParameters: {'skip': skip, 'limit': limit});

    if (response.isSuccessful()) {
      try {
        var productsData = ProductsModel.fromJson(response.data);

        return right(productsData);
      } catch (e) {
        return left(const ProductsFailure.serverError());
      }
    } else {
      return left(const ProductsFailure.serverError());
    }
  }

  @override
  Future<Either<ProductsFailure, ProductsModel>> getQueriedProducts(int skip, int limit, {String query = ''}) async {
    final dio = getIt<Dio>();

    Response response = await dio.get(ApiConstants.fetchProducts, queryParameters: {'skip': skip, 'limit': limit, 'q': query});

    if (response.isSuccessful()) {
      try {
        var productsData = ProductsModel.fromJson(response.data);

        return right(productsData);
      } catch (e) {
        return left(const ProductsFailure.serverError());
      }
    } else {
      return left(const ProductsFailure.serverError());
    }
  }
  
}