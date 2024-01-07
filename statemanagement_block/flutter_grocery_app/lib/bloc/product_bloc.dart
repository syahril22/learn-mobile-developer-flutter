import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grocery_ui/models/products.dart';
import 'package:http/http.dart' as http;

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<GetProductEvent>((event, emit) async {
      emit(ProductLoading());
      final response = await http
          .get(Uri.parse('https://fakestoreapi.com/products?limit=10'));
      emit(ProductSuccess(product: productFromJson(response.body)));
    });
  }
}
