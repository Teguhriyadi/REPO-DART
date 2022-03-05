import 'dart:io';

void main() {
  stdout.write("Masukkan Angka : ");
  int angka = int.parse(stdin.readLineSync()!);

  print("Anak ayam turun $angka");
  for (int i = angka; i >= 1; i--) {
    if (i - 1 == 0) {
      print("Anak ayam turun $i, mati satu tinggal induknya");
    } else {
      print("Anak ayam turun $i, mati satu tinggal ${i-1}");
    }
  }
}
