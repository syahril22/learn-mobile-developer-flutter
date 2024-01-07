part of 'product_bloc.dart';

abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
  final List<Product> product;

  ProductSuccess({required this.product});
}

class ProductFailur extends ProductState {
  final String errorMessage;

  ProductFailur({required this.errorMessage});
}
