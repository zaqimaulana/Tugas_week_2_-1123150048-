import 'dart:io';
import 'dart:math';

double _readNumber(String label) {
  while (true) {
    stdout.write('$label: ');
    final input = stdin.readLineSync();
    if (input == null) continue;

    final value = double.tryParse(input.trim());
    if (value != null) return value;

    print('Input tidak valid. Masukkan angka!');
  }
}

// Menu Aritmatika
void kalkulatorAritmatika() {
  while (true) {
    print('\n=== Kalkulator Aritmatika ===');
    print('1) Tambah');
    print('2) Kurang');
    print('3) Kali');
    print('4) Bagi');
    print('5) Kembali');
    stdout.write('Pilih [1-5]: ');
    final pilih = stdin.readLineSync()?.trim();

    if (pilih == '5') return;

    final a = _readNumber('Masukkan angka pertama');
    final b = _readNumber('Masukkan angka kedua');

    switch (pilih) {
      case '1':
        print('Hasil: ${a + b}');
        break;
      case '2':
        print('Hasil: ${a - b}');
        break;
      case '3':
        print('Hasil: ${a * b}');
        break;
      case '4':
        if (b == 0) {
          print('Error: Tidak bisa dibagi 0!');
        } else {
          print('Hasil: ${(a / b).toStringAsFixed(2)}');
        }
        break;
      default:
        print('Pilihan tidak dikenal.');
    }
  }
}

// Menu Bangun Datar
void kalkulatorBangunDatar() {
  while (true) {
    print('\n=== Kalkulator Bangun Datar ===');
    print('1) Persegi');
    print('2) Persegi Panjang');
    print('3) Segitiga');
    print('4) Lingkaran');
    print('5) Kembali');
    stdout.write('Pilih [1-5]: ');
    final pilih = stdin.readLineSync()?.trim();

    switch (pilih) {
      case '1':
        final s = _readNumber('Masukkan sisi');
        print('Luas: ${s * s}');
        print('Keliling: ${4 * s}');
        break;
      case '2':
        final p = _readNumber('Masukkan panjang');
        final l = _readNumber('Masukkan lebar');
        print('Luas: ${p * l}');
        print('Keliling: ${2 * (p + l)}');
        break;
      case '3':
        final a = _readNumber('Masukkan alas');
        final t = _readNumber('Masukkan tinggi');
        print('Luas: ${0.5 * a * t}');
        break;
      case '4':
        final r = _readNumber('Masukkan jari-jari');
        print('Luas: ${(pi * r * r).toStringAsFixed(2)}');
        print('Keliling: ${(2 * pi * r).toStringAsFixed(2)}');
        break;
      case '5':
        return;
      default:
        print('Pilihan tidak dikenal.');
    }
  }
}

void main() {
  while (true) {
    print('\n=== Menu Utama ===');
    print('1) Kalkulator Aritmatika');
    print('2) Kalkulator Bangun Datar');
    print('3) Keluar');
    stdout.write('Pilih [1-3]: ');
    final pilih = stdin.readLineSync()?.trim();

    switch (pilih) {
      case '1':
        kalkulatorAritmatika();
        break;
      case '2':
        kalkulatorBangunDatar();
        break;
      case '3':
        print('Bye!');
        return;
      default:
        print('Pilihan tidak dikenal.');
    }
  }
}
