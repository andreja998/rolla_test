import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rolla_zadatak/config/shared_prefs_keys.dart';
import 'package:rolla_zadatak/features/auth/domain/entities/user/user.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/failures/products_failure.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/products_model/product.dart';
import 'package:rolla_zadatak/features/products_page/domain/entities/products_model/products_model.dart';
import 'package:rolla_zadatak/features/products_page/domain/repositories/product_details_repository_interface.dart';
import 'package:rolla_zadatak/features/products_page/infrastructure/product_details_repository.dart';
import 'package:rolla_zadatak/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';

@injectable
class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final IProductDetailsRepositoryInterface productDetailsRepositoryInterface = ProductDetailsRepository(); // = ProductDetailsRepository();

  ProductDetailsBloc() : super(ProductDetailsState.initial()) {
    on<_GetProducts>((event, emit) async {
      if (state.isLoading) {
        return;
      }
      emit(state.copyWith(isLoading: true));
      
      var skip = 0;
      const limit = 15;
      if (state.curPage != 1) {
        skip = state.curPage * 15;
      }

      final result = await productDetailsRepositoryInterface.getProducts(skip, limit);

      result.fold((l) => {
        emit(state.copyWith(isLoading: false, failureOrSuccessOption: optionOf(result)))
      }, (productsModel) {
        List<Product> newProducts = [];
        var curPage = state.curPage;

        if (productsModel.products != null) {
          newProducts = [...state.products, ...productsModel.products!];
          curPage++;
        }
        
        emit(state.copyWith(isLoading: false, failureOrSuccessOption: optionOf(result), curPage: curPage, products: newProducts));
      });

      // result.fold((l) => emit(ExposuresState.error(failure: ExposureFailure.serverError())), (r) => emit(ExposuresState.loaded(exposures: r)));
    });
    on<_GetQueriedProducts>((event, emit) async {
      if (state.isLoading) {
        return;
      }
      emit(state.copyWith(isLoading: true));
      
      var skip = 0;
      const limit = 15;
      if (state.curPage != 1 && event.nextPage == true) {
        skip = state.curPage * 15;
      }
      Either<ProductsFailure, ProductsModel> result;
      if (event.query.isEmpty) {
        result = await productDetailsRepositoryInterface.getProducts(skip, limit);
      } else {
        result = await productDetailsRepositoryInterface.getQueriedProducts(skip, limit, query: event.query);
      }
      
      result.fold((l) => {
        emit(state.copyWith(isLoading: false, failureOrSuccessOption: optionOf(result), query: event.query))
      }, (productsModel) {
        List<Product> newProducts = [];
        var curPage = state.curPage;
      
        if (productsModel.products != null) {
          if (event.nextPage == true) {
            newProducts = [...state.products, ...productsModel.products!];
          } else {
            newProducts = productsModel.products!;
          }
          curPage++;
        }
        
        emit(state.copyWith(isLoading: false, failureOrSuccessOption: optionOf(result), curPage: curPage, products: newProducts, query: event.query));
      });
    }
    );
    on<_GetUser>((event, emit) async {
        var userString = getIt<SharedPreferences>().getString(SharedPrefsKeys.user);
        if (userString != null) {
          final user = User.fromJson(jsonDecode(userString));
          emit(state.copyWith(user: user));
        } else {
          // Handle the case where
        }
      });
  }
}
