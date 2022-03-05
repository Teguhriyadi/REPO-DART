import 'dart:io';

void main() {
  String? diskon;

  stdout.write("Masukkan Total Belanja : ");
  double? belanja = double.parse(stdin.readLineSync()!);

  stdout.write("Apakah Mempunyai Kartu ? [1][0] : ");
  int? kartu = int.parse(stdin.readLineSync()!);

  if (kartu == 1) {
    if (belanja > 100000) {
      diskon = "15rb";
    } else if (belanja > 500000) {
      diskon = "50rb";
    } else {
      diskon = "0rb";
    }
  } else {
    if (belanja > 100000) {
      diskon = "5rb";
    } else {
      diskon = "0rb";
    }
  }

  print("Total Belanja : $belanja");
  print("Diskon : $diskon");
}
