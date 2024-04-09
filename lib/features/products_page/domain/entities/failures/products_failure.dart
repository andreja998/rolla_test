import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_failure.freezed.dart';

@freezed
abstract class ProductsFailure with _$ProductsFailure {
  const factory ProductsFailure.serverError() = ServerError;
}
