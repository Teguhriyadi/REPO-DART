import 'dart:io';

var dataBuku = new Map();
var dataMahasiswa = new Map();
List<dynamic> dataPeminjam = <dynamic>[];
List<dynamic> dataPinjaman = <dynamic>[];

void main(List<String> args) {
  mainMenu();
}

void mainMenu() {
  clearScreen();
  print(" ==================================");
  print(" ###       SELAMAT DATANG       ###");
  print(" ==================================");
  print("");

  print(" [1] Data Buku");
  print(" [2] Data Mahasiswa");
  print(" [3] Data Peminjaman");
  print(" [4] Keluar");
  print("");
  print(" ==================================");
  stdout.write(" Masukan Kode Menu : ");
  int? kodeMenu = int.parse(stdin.readLineSync()!);
  print("==================================");
  if (kodeMenu == 1) {
    print("");
    menuBuku();
  } else if (kodeMenu == 2) {
    print("");
    menuMahasiswa();
  } else if (kodeMenu == 3) {
    print("");
    menuPeminjaman();
  }
}

void clearScreen() {
  print("\x1B[2J\x1B[0;0H");
}

void menuBuku() {
  print(" [1] Masukan Data Buku");
  print(" [2] Lihat Data Buku");
  print(" [3] Hapus Data Buku");
  print(" [4] Keluar");
  print("");
  print(" ==================================");
  stdout.write("Masukan kode menu : ");
  int? kodeMenu = int.parse(stdin.readLineSync()!);
  print(" ==================================");
  if (kodeMenu == 1) {
    stdout.write('Masukan jumlah buku : ');
    int? jumlahBuku = int.parse(stdin.readLineSync()!);
    print(" ==================================");
    print("");

    for (int i = 1; i <= jumlahBuku; i++) {
      print(" ==================================");
      print(" Buku Ke - $i");
      print(" ==================================");
      print("");
      stdout.write(" Masukkan Judul Buku : ");
      String? judulBuku = stdin.readLineSync()!;
      stdout.write(" Masukkan Penerbit Buku : ");
      String? penerbitBuku = stdin.readLineSync()!;
      stdout.write(" Masukkan Stok Buku : ");
      int? stokBuku = int.parse(stdin.readLineSync()!);

      print("");

      dataBuku[i] = {
        'id': '00$i',
        'judul': judulBuku,
        'penerbit': penerbitBuku,
        'stok': stokBuku,
      };
    }

    print(" ==================================");
    print("");
    menuBuku();
  } else if (kodeMenu == 2) {
    print(dataBuku);

    print("");

    menuBuku();
  } else if (kodeMenu == 3) {
    print(dataBuku);

    print("");

    stdout.write(" Masukkan Index Buku : ");
    int? indexBuku = int.parse(stdin.readLineSync()!);

    dataBuku.remove(indexBuku);

    menuBuku();
  } else if (kodeMenu == 4) {
    mainMenu();
  }
}

void menuMahasiswa() {
  print(" [1] Masukan Data Mahasiswa");
  print(" [2] Lihat Data Mahasiswa");
  print(" [3] Hapus Data Mahasiswa");
  print(" [4] Keluar");
  print("");
  print(" ==================================");
  stdout.write(" Masukan kode menu : ");
  int? kodeMenu = int.parse(stdin.readLineSync()!);
  print(" ==================================");
  if (kodeMenu == 1) {
    stdout.write('Masukan jumlah mahasiswa : ');
    int? jumlahMahasiswa = int.parse(stdin.readLineSync()!);
    print(" ==================================");
    print("");

    for (int i = 1; i <= jumlahMahasiswa; i++) {
      print(" ==================================");
      print(" Mahasiswa Ke - $i");
      print(" ==================================");
      print("");
      stdout.write(" Masukkan NIM Mahasiswa : ");
      String? nim = stdin.readLineSync()!;
      stdout.write(" Masukkan Nama Mahasiswa : ");
      String? nama = stdin.readLineSync()!;

      print("");

      dataMahasiswa[i] = {
        "nim": nim,
        "nama": nama,
      };
    }

    print(" ==================================");
    print("");
    menuMahasiswa();
  } else if (kodeMenu == 2) {
    print(dataMahasiswa);

    print("");

    menuMahasiswa();
  } else if (kodeMenu == 3) {
    print(dataMahasiswa);

    print("");

    stdout.write(" Masukkan Index Buku : ");
    int? indexBuku = int.parse(stdin.readLineSync()!);

    dataMahasiswa.remove(indexBuku);

    menuMahasiswa();
  } else if (kodeMenu == 4) {
    mainMenu();
  }
}

void menuPeminjaman() {
  print(" [1] Masukan Data Buku");
  print(" [2] Lihat Data Buku");
  print(" [3] Hapus Data Buku");
  print(" [4] Keluar");
  print("");
  print(" ==================================");
  stdout.write(" Masukan kode menu : ");
  int? kodeMenu = int.parse(stdin.readLineSync()!);
  print(" ==================================");
  if (kodeMenu == 1) {
    stdout.write(" Masukan jumlah peminjam : ");
    int? jumlahPeminjam = int.parse(stdin.readLineSync()!);
    print(" ==================================");
    print("");

    print(" Data Mahasiswa");
    print(dataMahasiswa);
    print(" Data Buku");
    print(dataBuku);

    print("");

    for (int k = 1; k <= jumlahPeminjam; k++) {
      stdout.write(" Masukan index mahasiswa : ");
      int? indexMahasiswa = int.parse(stdin.readLineSync()!);
      stdout.write(" Masukan jumlah pinjaman buku : ");
      int? jumlahPinjaman = int.parse(stdin.readLineSync()!);

      dataPinjaman = <dynamic>[];
      for (var l = 1; l <= jumlahPinjaman; l++) {
        stdout.write(" Masukan Index Buku : ");
        int? indexBuku = int.parse(stdin.readLineSync()!);
        dataBuku[indexBuku]['stok'] -= 1;
        dataPinjaman.add(indexBuku);
      }

      dataPeminjam.add({
        k: {
          "nim": dataMahasiswa[indexMahasiswa]["nim"],
          "nama": dataMahasiswa[indexMahasiswa]["nama"],
          "buku": {
            for (var dp in dataPinjaman)
              {'id': dataBuku[dp]['id'], 'judul': dataBuku[dp]['judul']}
          }
        }
      });

      print("");
    }

    menuPeminjaman();
  } else if (kodeMenu == 2) {
    print(dataPeminjam);

    print("");

    menuPeminjaman();
  } else if (kodeMenu == 3) {
    print(dataPeminjam);

    print("");

    stdout.write(" Masukan Index Peminjam : ");
    int? indexPeminjam = int.parse(stdin.readLineSync()!);

    dataPeminjam.remove(indexPeminjam);

    menuPeminjaman();
  } else if (kodeMenu == 4) {
    mainMenu();
  }
}
