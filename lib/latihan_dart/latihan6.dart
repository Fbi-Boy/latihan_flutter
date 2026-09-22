class Produk {
  String nama;
  double _harga;

  Produk(this.nama, this._harga);

  double get harga => _harga;

  set harga(double value) {
    if (value < 0) {
      _harga = 0;
    } else {
      _harga = value;
    }
  }

  Produk.gratis(this.nama) : _harga = 0;
}

abstract class Kendaraan {
  void bunyiKlakson();
}

mixin BisaNgebut {
  void ngebut() {
    print("Kendaraan sedang ngebut!");
  }
}

class Motor extends Kendaraan {
  @override
  void bunyiKlakson() {
    print("Motor: Tin tin!");
  }
}

class Mobil extends Kendaraan with BisaNgebut {
  @override
  void bunyiKlakson() {
    print("Mobil: Tiiin tiiin!");
  }
}

Stream<String> ambilNotifikasi() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield "Notifikasi ke-$i";
  }
}

Future<List<Produk>> ambilDaftarProduk() async {
  await Future.delayed(Duration(seconds: 2));

  return [
    Produk("Laptop", 7500000),
    Produk("Mouse", 250000),
    Produk.gratis("Buku Dart"),
  ];
}

String kategoriNilai(int nilai) {
  return switch (nilai) {
    >= 90 => "A",
    >= 75 => "B",
    _ => "C",
  };
}

Future<void> main() async {
  String? namaMahasiswa;
  namaMahasiswa ??= "Fabi Faharudin Faiz";

  print("=== NULL SAFETY ===");
  print("Nama: $namaMahasiswa");

  print("\n=== COLLECTION ===");
  List<int> nilai = [80, 90, 65, 70, 95];

  var nilaiLulus = nilai.where((n) => n >= 75).toList();
  var predikat = nilai.map(kategoriNilai).toList();

  print("Nilai awal : $nilai");
  print("Nilai lulus: $nilaiLulus");
  print("Predikat   : $predikat");

  print("\n=== FUNCTION ===");
  print("Kategori nilai 85: ${kategoriNilai(85)}");

  print("\n=== OOP PRODUK ===");
  var produk1 = Produk("Laptop", 7500000);
  var produk2 = Produk.gratis("Buku Dart");

  print("${produk1.nama} = Rp${produk1.harga}");
  print("${produk2.nama} = Rp${produk2.harga}");

  print("\n=== INHERITANCE & MIXIN ===");
  var motor = Motor();
  var mobil = Mobil();

  motor.bunyiKlakson();
  mobil.bunyiKlakson();
  mobil.ngebut();

  print("\n=== FUTURE ===");
  print("Mengambil daftar produk...");

  var daftarProduk = await ambilDaftarProduk();

  for (var produk in daftarProduk) {
    print("${produk.nama} = Rp${produk.harga}");
  }

  print("\n=== STREAM ===");

  await for (var notifikasi in ambilNotifikasi()) {
    print(notifikasi);
  }

  print("\n=== SELESAI ===");
}