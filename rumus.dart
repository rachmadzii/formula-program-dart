import 'dart:io';
import 'dart:math';

class RumusPersegiPanjang {
  double panjang;
  double lebar;

  void rumusHasilPP() {
    print("Menghitung Luas Persegi Panjang");
    stdout.write("Masukkan Panjang: ");
    panjang = double.parse(stdin.readLineSync());
    stdout.write("Masukkan Lebar: ");
    lebar = double.parse(stdin.readLineSync());
    print("Hasil Luas Persegi Panjang adalah ${this.panjang * this.lebar}");
  }
}

class RumusPersegi {
  double sisi;

  void rumusHasilPersegi() {
    print("Menghitung Luas Persegi");
    stdout.write("Masukkan Sisi: ");
    sisi = double.parse(stdin.readLineSync());
    print("Hasil Luas Persegi adalah ${this.sisi * this.sisi}");
  }
}

class RumusSegitiga {
  double alas;
  double tinggi;

  void rumusHasilSegitiga() {
    print("Menghitung Luas Segitiga");
    stdout.write("Masukkan Alas: ");
    alas = double.parse(stdin.readLineSync());
    stdout.write("Masukkan Tinggi: ");
    tinggi = double.parse(stdin.readLineSync());
    print("Hasil Luas Segitiga adalah ${0.5 * this.alas * this.tinggi}");
  }
}

void main() {
  var pilihan;
  var hasilPersegiPanjang = RumusPersegiPanjang();
  var hasilPersegi = RumusPersegi();
  var hasilSegitiga = RumusSegitiga();
  var jawaban;

  program:
  do {
    print("1. Hitung Luas Persegi Panjang");
    print("2. Hitung Luas Persegi");
    print("3. Hitung Luas Segitiga");

    stdout.write("Pilih : ");
    pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        hasilPersegiPanjang.rumusHasilPP();
        break;

      case '2':
        hasilPersegi.rumusHasilPersegi();
        break;

      case '3':
        hasilSegitiga.rumusHasilSegitiga();
        break;

      default:
        print("Pilihan tidak sesuai");
    }
    stdout.write("Ingin mengulang? (y/n) ");
    jawaban = stdin.readLineSync();
  } while (jawaban == 'Y' || jawaban == 'y');
  return;
}
