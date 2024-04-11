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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(String query, bool nextPage) getQueriedProducts,
    required TResult Function() getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(String query, bool nextPage)? getQueriedProducts,
    TResult? Function()? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(String query, bool nextPage)? getQueriedProducts,
    TResult Function()? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetQueriedProducts value) getQueriedProducts,
    required TResult Function(_GetUser value) getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetQueriedProducts value)? getQueriedProducts,
    TResult? Function(_GetUser value)? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetQueriedProducts value)? getQueriedProducts,
    TResult Function(_GetUser value)? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsEventCopyWith<$Res> {
  factory $ProductDetailsEventCopyWith(
          ProductDetailsEvent value, $Res Function(ProductDetailsEvent) then) =
      _$ProductDetailsEventCopyWithImpl<$Res, ProductDetailsEvent>;
}

/// @nodoc
class _$ProductDetailsEventCopyWithImpl<$Res, $Val extends ProductDetailsEvent>
    implements $ProductDetailsEventCopyWith<$Res> {
  _$ProductDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetProductsCopyWith<$Res> {
  factory _$$_GetProductsCopyWith(
          _$_GetProducts value, $Res Function(_$_GetProducts) then) =
      __$$_GetProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetProductsCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$_GetProducts>
    implements _$$_GetProductsCopyWith<$Res> {
  __$$_GetProductsCopyWithImpl(
      _$_GetProducts _value, $Res Function(_$_GetProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetProducts implements _GetProducts {
  const _$_GetProducts();

  @override
  String toString() {
    return 'ProductDetailsEvent.getProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(String query, bool nextPage) getQueriedProducts,
    required TResult Function() getUser,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(String query, bool nextPage)? getQueriedProducts,
    TResult? Function()? getUser,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(String query, bool nextPage)? getQueriedProducts,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetQueriedProducts value) getQueriedProducts,
    required TResult Function(_GetUser value) getUser,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetQueriedProducts value)? getQueriedProducts,
    TResult? Function(_GetUser value)? getUser,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetQueriedProducts value)? getQueriedProducts,
    TResult Function(_GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements ProductDetailsEvent {
  const factory _GetProducts() = _$_GetProducts;
}

/// @nodoc
abstract class _$$_GetQueriedProductsCopyWith<$Res> {
  factory _$$_GetQueriedProductsCopyWith(_$_GetQueriedProducts value,
          $Res Function(_$_GetQueriedProducts) then) =
      __$$_GetQueriedProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, bool nextPage});
}

/// @nodoc
class __$$_GetQueriedProductsCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$_GetQueriedProducts>
    implements _$$_GetQueriedProductsCopyWith<$Res> {
  __$$_GetQueriedProductsCopyWithImpl(
      _$_GetQueriedProducts _value, $Res Function(_$_GetQueriedProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? nextPage = null,
  }) {
    return _then(_$_GetQueriedProducts(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GetQueriedProducts implements _GetQueriedProducts {
  const _$_GetQueriedProducts(this.query, this.nextPage);

  @override
  final String query;
  @override
  final bool nextPage;

  @override
  String toString() {
    return 'ProductDetailsEvent.getQueriedProducts(query: $query, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetQueriedProducts &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, nextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetQueriedProductsCopyWith<_$_GetQueriedProducts> get copyWith =>
      __$$_GetQueriedProductsCopyWithImpl<_$_GetQueriedProducts>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(String query, bool nextPage) getQueriedProducts,
    required TResult Function() getUser,
  }) {
    return getQueriedProducts(query, nextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(String query, bool nextPage)? getQueriedProducts,
    TResult? Function()? getUser,
  }) {
    return getQueriedProducts?.call(query, nextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(String query, bool nextPage)? getQueriedProducts,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (getQueriedProducts != null) {
      return getQueriedProducts(query, nextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetQueriedProducts value) getQueriedProducts,
    required TResult Function(_GetUser value) getUser,
  }) {
    return getQueriedProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetQueriedProducts value)? getQueriedProducts,
    TResult? Function(_GetUser value)? getUser,
  }) {
    return getQueriedProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetQueriedProducts value)? getQueriedProducts,
    TResult Function(_GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getQueriedProducts != null) {
      return getQueriedProducts(this);
    }
    return orElse();
  }
}

abstract class _GetQueriedProducts implements ProductDetailsEvent {
  const factory _GetQueriedProducts(final String query, final bool nextPage) =
      _$_GetQueriedProducts;

  String get query;
  bool get nextPage;
  @JsonKey(ignore: true)
  _$$_GetQueriedProductsCopyWith<_$_GetQueriedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetUserCopyWith<$Res> {
  factory _$$_GetUserCopyWith(
          _$_GetUser value, $Res Function(_$_GetUser) then) =
      __$$_GetUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetUserCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$_GetUser>
    implements _$$_GetUserCopyWith<$Res> {
  __$$_GetUserCopyWithImpl(_$_GetUser _value, $Res Function(_$_GetUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetUser implements _GetUser {
  const _$_GetUser();

  @override
  String toString() {
    return 'ProductDetailsEvent.getUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(String query, bool nextPage) getQueriedProducts,
    required TResult Function() getUser,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(String query, bool nextPage)? getQueriedProducts,
    TResult? Function()? getUser,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(String query, bool nextPage)? getQueriedProducts,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetQueriedProducts value) getQueriedProducts,
    required TResult Function(_GetUser value) getUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetQueriedProducts value)? getQueriedProducts,
    TResult? Function(_GetUser value)? getUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetQueriedProducts value)? getQueriedProducts,
    TResult Function(_GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements ProductDetailsEvent {
  const factory _GetUser() = _$_GetUser;
}

/// @nodoc
mixin _$ProductDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ProductsFailure, ProductsModel>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  int get curPage => throw _privateConstructorUsedError;
  bool get loadingNextPage => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

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
      List<Product> products,
      User? user,
      String query});

  $UserCopyWith<$Res>? get user;
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
    Object? user = freezed,
    Object? query = null,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
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
      List<Product> products,
      User? user,
      String query});

  @override
  $UserCopyWith<$Res>? get user;
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
    Object? user = freezed,
    Object? query = null,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
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
      required final List<Product> products,
      this.user,
      required this.query})
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
  final User? user;
  @override
  final String query;

  @override
  String toString() {
    return 'ProductDetailsState(isLoading: $isLoading, failureOrSuccessOption: $failureOrSuccessOption, curPage: $curPage, loadingNextPage: $loadingNextPage, products: $products, user: $user, query: $query)';
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
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      failureOrSuccessOption,
      curPage,
      loadingNextPage,
      const DeepCollectionEquality().hash(_products),
      user,
      query);

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
      required final List<Product> products,
      final User? user,
      required final String query}) = _$_ProductDetailsState;

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
  User? get user;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsStateCopyWith<_$_ProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
