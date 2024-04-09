import 'package:fpdart/fpdart.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/failures/products_failure.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/products_model/products_model.dart';

abstract class IProductDetailsRepositoryInterface {
  Future<Either<ProductsFailure, ProductsModel>> getProducts(int skip, int limit, {String query = ''});
}
