// method static
// static merupakan kata kunci untuk membuat field atau method yg bisa di akses tanpa harus membuat objectny
// saat kita membuat field atau method yang static, artinya dia secara otomatis bisa di akses oleh object manapun, oleh karena itu perlu berhati-hati ketika membuat field atau method static
// method atau field static bisa diakses oleh method atau field yg tidak static
// namun static tidak bisa mengakses yg tidak static
// bisayanya staic digunakan untuk membuat utility seperti helper
class Math {
  static int sum(int first, int second) => first + second;
}

void main() {
  print(Math.sum(10, 10));
}
