// membuat class exception bawaan dart
// class Validation {
//   static void validate(String username, String password) {
//     if (username == "") {
//       throw Exception('Username is blank');
//     } else if (password == "") {
//       throw Exception('Password is blank');
//     }
//   }
// }

// void main() {
//   Validation.validate("", "");
// }

//
//
//

// membuat class exception
// sangat di rekomendasikan ketika membuat class exception baru, kita melakukan implements ke class Exception (sebagai penanda saja)

class ValidationException implements Exception {
  String message;

  ValidationException(this.message);
}

class Validation {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidationException("Username is blank");
    } else if (password == "") {
      throw ValidationException("Password is blank");
    } else if (username != "syahril" || password != "123456") {
      // kita coba multiple try-catch
      throw Exception('Login vailed');
    }
  }
}

void main() {
  // Validation.validate("", "123");

  // jika seperti ini saja maka program akan berhenti, jika kita tidak ingin program berhenti maka kita bisa gunakan try-catch

  // try {
  //   Validation.validate("", "123");
  // } on ValidationException {
  //   print('Validation Error');
  // }

  // // penanda selesai saja
  // print('Selesai');

  // sekarang kita akan menangkan object exceptionnya
  try {
    Validation.validate("syahril", "1234");
  } on ValidationException catch (exception, stackTrace) {
    print('Error : ${exception.message} ');
    print('location : ${stackTrace.toString()} ');
  } on Exception catch (exception, stackTrace) {
    print('Error : ${exception.toString()}');
    print('location : ${stackTrace.toString()} ');
  } finally {
    print('Finally');
  }

  // try-catch semua exception
  // kadang-kadang kita tidak terlalu peduli dengan jenis class Exception
  // pada kasus seperti ini kita bisa tidak menyebutkan classnya ketika try-catch

  try {
    Validation.validate("syahril", "1234");
  } catch (exception) {
    print('Error : ${exception.toString()}');
  } finally {
    print('Finally');
  }
}
