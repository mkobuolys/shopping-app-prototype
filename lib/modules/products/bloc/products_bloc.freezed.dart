// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductsStateTearOff {
  const _$ProductsStateTearOff();

// ignore: unused_element
  ProductsInitial initial() {
    return const ProductsInitial();
  }

// ignore: unused_element
  ProductsLoadSuccess loadSuccess(
      {@required BuiltList<Product> products, @required int total}) {
    return ProductsLoadSuccess(
      products: products,
      total: total,
    );
  }

// ignore: unused_element
  ProductsLoadFailure loadFailure() {
    return const ProductsLoadFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $ProductsState = _$ProductsStateTearOff();

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(BuiltList<Product> products, int total),
    @required TResult loadFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(BuiltList<Product> products, int total),
    TResult loadFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProductsInitial value),
    @required TResult loadSuccess(ProductsLoadSuccess value),
    @required TResult loadFailure(ProductsLoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProductsInitial value),
    TResult loadSuccess(ProductsLoadSuccess value),
    TResult loadFailure(ProductsLoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  final ProductsState _value;
  // ignore: unused_field
  final $Res Function(ProductsState) _then;
}

/// @nodoc
abstract class $ProductsInitialCopyWith<$Res> {
  factory $ProductsInitialCopyWith(
          ProductsInitial value, $Res Function(ProductsInitial) then) =
      _$ProductsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsInitialCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsInitialCopyWith<$Res> {
  _$ProductsInitialCopyWithImpl(
      ProductsInitial _value, $Res Function(ProductsInitial) _then)
      : super(_value, (v) => _then(v as ProductsInitial));

  @override
  ProductsInitial get _value => super._value as ProductsInitial;
}

/// @nodoc
class _$ProductsInitial implements ProductsInitial {
  const _$ProductsInitial();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(BuiltList<Product> products, int total),
    @required TResult loadFailure(),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(BuiltList<Product> products, int total),
    TResult loadFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProductsInitial value),
    @required TResult loadSuccess(ProductsLoadSuccess value),
    @required TResult loadFailure(ProductsLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProductsInitial value),
    TResult loadSuccess(ProductsLoadSuccess value),
    TResult loadFailure(ProductsLoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductsInitial implements ProductsState {
  const factory ProductsInitial() = _$ProductsInitial;
}

/// @nodoc
abstract class $ProductsLoadSuccessCopyWith<$Res> {
  factory $ProductsLoadSuccessCopyWith(
          ProductsLoadSuccess value, $Res Function(ProductsLoadSuccess) then) =
      _$ProductsLoadSuccessCopyWithImpl<$Res>;
  $Res call({BuiltList<Product> products, int total});
}

/// @nodoc
class _$ProductsLoadSuccessCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsLoadSuccessCopyWith<$Res> {
  _$ProductsLoadSuccessCopyWithImpl(
      ProductsLoadSuccess _value, $Res Function(ProductsLoadSuccess) _then)
      : super(_value, (v) => _then(v as ProductsLoadSuccess));

  @override
  ProductsLoadSuccess get _value => super._value as ProductsLoadSuccess;

  @override
  $Res call({
    Object products = freezed,
    Object total = freezed,
  }) {
    return _then(ProductsLoadSuccess(
      products: products == freezed
          ? _value.products
          : products as BuiltList<Product>,
      total: total == freezed ? _value.total : total as int,
    ));
  }
}

/// @nodoc
class _$ProductsLoadSuccess implements ProductsLoadSuccess {
  const _$ProductsLoadSuccess({@required this.products, @required this.total})
      : assert(products != null),
        assert(total != null);

  @override
  final BuiltList<Product> products;
  @override
  final int total;

  @override
  String toString() {
    return 'ProductsState.loadSuccess(products: $products, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductsLoadSuccess &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(total);

  @override
  $ProductsLoadSuccessCopyWith<ProductsLoadSuccess> get copyWith =>
      _$ProductsLoadSuccessCopyWithImpl<ProductsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(BuiltList<Product> products, int total),
    @required TResult loadFailure(),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(products, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(BuiltList<Product> products, int total),
    TResult loadFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(products, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProductsInitial value),
    @required TResult loadSuccess(ProductsLoadSuccess value),
    @required TResult loadFailure(ProductsLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProductsInitial value),
    TResult loadSuccess(ProductsLoadSuccess value),
    TResult loadFailure(ProductsLoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadSuccess implements ProductsState {
  const factory ProductsLoadSuccess(
      {@required BuiltList<Product> products,
      @required int total}) = _$ProductsLoadSuccess;

  BuiltList<Product> get products;
  int get total;
  $ProductsLoadSuccessCopyWith<ProductsLoadSuccess> get copyWith;
}

/// @nodoc
abstract class $ProductsLoadFailureCopyWith<$Res> {
  factory $ProductsLoadFailureCopyWith(
          ProductsLoadFailure value, $Res Function(ProductsLoadFailure) then) =
      _$ProductsLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsLoadFailureCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsLoadFailureCopyWith<$Res> {
  _$ProductsLoadFailureCopyWithImpl(
      ProductsLoadFailure _value, $Res Function(ProductsLoadFailure) _then)
      : super(_value, (v) => _then(v as ProductsLoadFailure));

  @override
  ProductsLoadFailure get _value => super._value as ProductsLoadFailure;
}

/// @nodoc
class _$ProductsLoadFailure implements ProductsLoadFailure {
  const _$ProductsLoadFailure();

  @override
  String toString() {
    return 'ProductsState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductsLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(BuiltList<Product> products, int total),
    @required TResult loadFailure(),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(BuiltList<Product> products, int total),
    TResult loadFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProductsInitial value),
    @required TResult loadSuccess(ProductsLoadSuccess value),
    @required TResult loadFailure(ProductsLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProductsInitial value),
    TResult loadSuccess(ProductsLoadSuccess value),
    TResult loadFailure(ProductsLoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadFailure implements ProductsState {
  const factory ProductsLoadFailure() = _$ProductsLoadFailure;
}

/// @nodoc
class _$ProductsEventTearOff {
  const _$ProductsEventTearOff();

// ignore: unused_element
  ProductsLoadStarted loadStarted({bool isRefresh = false}) {
    return ProductsLoadStarted(
      isRefresh: isRefresh,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductsEvent = _$ProductsEventTearOff();

/// @nodoc
mixin _$ProductsEvent {
  bool get isRefresh;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadStarted(bool isRefresh),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadStarted(bool isRefresh),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadStarted(ProductsLoadStarted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadStarted(ProductsLoadStarted value),
    @required TResult orElse(),
  });

  $ProductsEventCopyWith<ProductsEvent> get copyWith;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res>;
  $Res call({bool isRefresh});
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  final ProductsEvent _value;
  // ignore: unused_field
  final $Res Function(ProductsEvent) _then;

  @override
  $Res call({
    Object isRefresh = freezed,
  }) {
    return _then(_value.copyWith(
      isRefresh: isRefresh == freezed ? _value.isRefresh : isRefresh as bool,
    ));
  }
}

/// @nodoc
abstract class $ProductsLoadStartedCopyWith<$Res>
    implements $ProductsEventCopyWith<$Res> {
  factory $ProductsLoadStartedCopyWith(
          ProductsLoadStarted value, $Res Function(ProductsLoadStarted) then) =
      _$ProductsLoadStartedCopyWithImpl<$Res>;
  @override
  $Res call({bool isRefresh});
}

/// @nodoc
class _$ProductsLoadStartedCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res>
    implements $ProductsLoadStartedCopyWith<$Res> {
  _$ProductsLoadStartedCopyWithImpl(
      ProductsLoadStarted _value, $Res Function(ProductsLoadStarted) _then)
      : super(_value, (v) => _then(v as ProductsLoadStarted));

  @override
  ProductsLoadStarted get _value => super._value as ProductsLoadStarted;

  @override
  $Res call({
    Object isRefresh = freezed,
  }) {
    return _then(ProductsLoadStarted(
      isRefresh: isRefresh == freezed ? _value.isRefresh : isRefresh as bool,
    ));
  }
}

/// @nodoc
class _$ProductsLoadStarted implements ProductsLoadStarted {
  const _$ProductsLoadStarted({this.isRefresh = false})
      : assert(isRefresh != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'ProductsEvent.loadStarted(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductsLoadStarted &&
            (identical(other.isRefresh, isRefresh) ||
                const DeepCollectionEquality()
                    .equals(other.isRefresh, isRefresh)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isRefresh);

  @override
  $ProductsLoadStartedCopyWith<ProductsLoadStarted> get copyWith =>
      _$ProductsLoadStartedCopyWithImpl<ProductsLoadStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadStarted(bool isRefresh),
  }) {
    assert(loadStarted != null);
    return loadStarted(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadStarted(bool isRefresh),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadStarted != null) {
      return loadStarted(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadStarted(ProductsLoadStarted value),
  }) {
    assert(loadStarted != null);
    return loadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadStarted(ProductsLoadStarted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadStarted != null) {
      return loadStarted(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadStarted implements ProductsEvent {
  const factory ProductsLoadStarted({bool isRefresh}) = _$ProductsLoadStarted;

  @override
  bool get isRefresh;
  @override
  $ProductsLoadStartedCopyWith<ProductsLoadStarted> get copyWith;
}
