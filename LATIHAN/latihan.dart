import 'dart:io';
void main() {

  List<String> daftarMatkul = <String>[];

  print("Masukkan Jumlah Mata Kuliah : ");
  String? jumlahMatakuliah = stdin.readLineSync();

  var jumlah = int.parse(jumlahMatakuliah!);
  for (var i = 1; i <= jumlah; i++) {
    print("Mata Kuliah - $i");
    String? mk = stdin.readLineSync();
    daftarMatkul.add(mk.toString());
  }

  for (var m in daftarMatkul) {
    print("Mata Kuliah $m");
  }

}