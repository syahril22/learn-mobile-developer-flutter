// Secara singkat, noSuchMethod memberikan mekanisme untuk menangani pemanggilan metode yang tidak ada dalam suatu objek. Dengan menggunakan noSuchMethod, kita dapat memberikan respons khusus atau tindakan tertentu ketika suatu metode yang tidak dideklarasikan dipanggil pada objek.

// example
class DynamicObject {
  // method ini akan di panggil jika methode yg tidak dideklarasikan dijalankan
  @override
  noSuchMethod(Invocation invocation) {
    print('Method ${invocation.memberName} tidak di temukan');
  }
}

void main() {
  dynamic obj = DynamicObject();
  // menjalankan method yg tidak ada
  obj.undefinedMethod();
}

// Dalam contoh di atas, noSuchMethod dipanggil ketika metode undefinedMethod dipanggil pada objek DynamicObject. noSuchMethod memberikan pesan bahwa metode yang dimaksud tidak ditemukan, dan kita dapat menentukan tindakan atau respons khusus yang sesuai dengan kebutuhan kita.
