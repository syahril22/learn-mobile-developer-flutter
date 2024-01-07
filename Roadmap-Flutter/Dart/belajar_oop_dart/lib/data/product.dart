// access modifier
// kita bisa menentukan untuk memberikan access kepada file lain untuk bisa atau tidaknya mengakses properti atau method pada class yg kita buat
// jika kita ingin menyembunyikan filed atau method dari file lain kita bisa gunakan (_)

class Product {
  String? id;
  String? name;
  int? _quantity;

  void _getproduct() {
    print('this product $name, pirce : $_quantity');
  }
}

// jika di akses di dalam file yg sama, maka _quantity dan _getquantity bisa di akses
// namun jika di dalam file lain maka tidak bisa
void main() {
  var product = Product();
  product.id = '1';
  product.name = 'Baju';
  product._quantity = 10;

  product._getproduct();
}
