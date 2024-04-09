// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailsEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailsEventCopyWith<ProductDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsEventCopyWith<$Res> {
  factory $ProductDetailsEventCopyWith(
          ProductDetailsEvent value, $Res Function(ProductDetailsEvent) then) =
      _$ProductDetailsEventCopyWithImpl<$Res, ProductDetailsEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$ProductDetailsEventCopyWithImpl<$Res, $Val extends ProductDetailsEvent>
    implements $ProductDetailsEventCopyWith<$Res> {
  _$ProductDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetProductsCopyWith<$Res>
    implements $ProductDetailsEventCopyWith<$Res> {
  factory _$$_GetProductsCopyWith(
          _$_GetProducts value, $Res Function(_$_GetProducts) then) =
      __$$_GetProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_GetProductsCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$_GetProducts>
    implements _$$_GetProductsCopyWith<$Res> {
  __$$_GetProductsCopyWithImpl(
      _$_GetProducts _value, $Res Function(_$_GetProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_GetProducts(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetProducts implements _GetProducts {
  const _$_GetProducts(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProductDetailsEvent.getProducts(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProducts &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductsCopyWith<_$_GetProducts> get copyWith =>
      __$$_GetProductsCopyWithImpl<_$_GetProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getProducts,
  }) {
    return getProducts(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getProducts,
  }) {
    return getProducts?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements ProductDetailsEvent {
  const factory _GetProducts(final String query) = _$_GetProducts;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_GetProductsCopyWith<_$_GetProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ProductsFailure, ProductsModel>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  int get curPage => throw _privateConstructorUsedError;
  bool get loadingNextPage => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailsStateCopyWith<ProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsStateCopyWith<$Res> {
  factory $ProductDetailsStateCopyWith(
          ProductDetailsState value, $Res Function(ProductDetailsState) then) =
      _$ProductDetailsStateCopyWithImpl<$Res, ProductDetailsState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ProductsFailure, ProductsModel>> failureOrSuccessOption,
      int curPage,
      bool loadingNextPage,
      List<Product> products});
}

/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res, $Val extends ProductDetailsState>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
    Object? curPage = null,
    Object? loadingNextPage = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductsFailure, ProductsModel>>,
      curPage: null == curPage
          ? _value.curPage
          : curPage // ignore: cast_nullable_to_non_nullable
              as int,
      loadingNextPage: null == loadingNextPage
          ? _value.loadingNextPage
          : loadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailsStateCopyWith<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  factory _$$_ProductDetailsStateCopyWith(_$_ProductDetailsState value,
          $Res Function(_$_ProductDetailsState) then) =
      __$$_ProductDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ProductsFailure, ProductsModel>> failureOrSuccessOption,
      int curPage,
      bool loadingNextPage,
      List<Product> products});
}

/// @nodoc
class __$$_ProductDetailsStateCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res, _$_ProductDetailsState>
    implements _$$_ProductDetailsStateCopyWith<$Res> {
  __$$_ProductDetailsStateCopyWithImpl(_$_ProductDetailsState _value,
      $Res Function(_$_ProductDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
    Object? curPage = null,
    Object? loadingNextPage = null,
    Object? products = null,
  }) {
    return _then(_$_ProductDetailsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductsFailure, ProductsModel>>,
      curPage: null == curPage
          ? _value.curPage
          : curPage // ignore: cast_nullable_to_non_nullable
              as int,
      loadingNextPage: null == loadingNextPage
          ? _value.loadingNextPage
          : loadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductDetailsState implements _ProductDetailsState {
  const _$_ProductDetailsState(
      {required this.isLoading,
      required this.failureOrSuccessOption,
      required this.curPage,
      required this.loadingNextPage,
      required final List<Product> products})
      : _products = products;

  @override
  final bool isLoading;
  @override
  final Option<Either<ProductsFailure, ProductsModel>> failureOrSuccessOption;
  @override
  final int curPage;
  @override
  final bool loadingNextPage;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductDetailsState(isLoading: $isLoading, failureOrSuccessOption: $failureOrSuccessOption, curPage: $curPage, loadingNextPage: $loadingNextPage, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption) &&
            (identical(other.curPage, curPage) || other.curPage == curPage) &&
            (identical(other.loadingNextPage, loadingNextPage) ||
                other.loadingNextPage == loadingNextPage) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      failureOrSuccessOption,
      curPage,
      loadingNextPage,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailsStateCopyWith<_$_ProductDetailsState> get copyWith =>
      __$$_ProductDetailsStateCopyWithImpl<_$_ProductDetailsState>(
          this, _$identity);
}

abstract class _ProductDetailsState implements ProductDetailsState {
  const factory _ProductDetailsState(
      {required final bool isLoading,
      required final Option<Either<ProductsFailure, ProductsModel>>
          failureOrSuccessOption,
      required final int curPage,
      required final bool loadingNextPage,
      required final List<Product> products}) = _$_ProductDetailsState;

  @override
  bool get isLoading;
  @override
  Option<Either<ProductsFailure, ProductsModel>> get failureOrSuccessOption;
  @override
  int get curPage;
  @override
  bool get loadingNextPage;
  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsStateCopyWith<_$_ProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
