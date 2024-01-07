// access modifier
// suatu field or method tidak bisa di acess di luar file jika dikasih access modifier dengan kata kunci _namafield or _namamethod

import 'data/product.dart';

void main() {
  var product = Product();
  product.id = '2';
  product.name = 'Celana';
  // product._quantity error
  // product._getproduct error
}
