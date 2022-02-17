import 'dart:io';

void main() {
  List<String> daftarMatkul = <String>[];

  stdout.write("Masukkan Jumlah Mata Kuliah : ");
  String? jumlahMatakuliah = stdin.readLineSync();

  var jumlah = int.parse(jumlahMatakuliah!);
  for (var i = 1; i <= jumlah; i++) {
    stdout.write("Mata Kuliah = $i : ");
    String? mk = stdin.readLineSync();
    daftarMatkul.add(mk.toString());
  }

  print("");
  print("Daftar Mata Kuliah : ");
  for (var m in daftarMatkul) {
    print("Mata Kuliah : $m");
  }
  print("");
}
