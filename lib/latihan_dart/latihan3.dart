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

void main() {
  var produk1 = Produk("Laptop", 7500000);
  var produk2 = Produk.gratis("Buku");

  print("Produk 1");
  print("Nama  : ${produk1.nama}");
  print("Harga : ${produk1.harga}");

  print("\nProduk 2");
  print("Nama  : ${produk2.nama}");
  print("Harga : ${produk2.harga}");

  produk1.harga = -500000;

  print("\nHarga setelah validasi setter:");
  print(produk1.harga);
}