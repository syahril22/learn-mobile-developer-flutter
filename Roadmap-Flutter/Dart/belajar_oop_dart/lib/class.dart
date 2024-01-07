class Product {
  // this is field
  String nameProduct = 'Serum Acne';
  String? priceProduct;
  final String productionProductBy = 'Indonesia';

  // this is method(function)
  void descriptioProduct() {
    print(
        '$nameProduct merupakan product yang di production di $productionProductBy dan product ini di jual dengan harga $priceProduct');
  }
}

void main() {
  // kita membuat object
  var product1 = Product();
  // mengakses filed in class
  print(product1.nameProduct);
  print(product1.priceProduct);
  print(product1.productionProductBy);
  // mengakses method in class
  product1.descriptioProduct();

  // kita buat object baru
  var product2 = Product();
  // manipulasi/rubah data field
  product2.nameProduct = 'Sanscreen Azarine';
  product2.priceProduct = 'Rp. 50.000.00';
  // product2.productionProductBy = 'singapore';  (error becuase filed final)

  // acsess field with new value
  print(product2.nameProduct);
  print(product2.priceProduct);
  print(product2.productionProductBy);
  // akses method class with new value
  product2.descriptioProduct();

// kita buat object baru
  var product3 = Product();
// mengakses field dari class dan memasukannya dalam array
  List<String?> products = [
    product3.nameProduct,
    product3.priceProduct,
    product3.productionProductBy
  ];
  print(products);
}
