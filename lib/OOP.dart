class Produk {
  String nama;
  double _harga;

  Produk(this.nama, this._harga);

  Produk.gratis(this.nama) : _harga = 0;

  double get harga => _harga;

  set harga(double value) {
    if (value >= 0) {
      _harga = value;
    }
  }

  void tampilkanProduk() {
    print('Produk: $nama');
    print('Harga: Rp$_harga');
  }
}

abstract class Kendaraan {
  void bunyiKlakson();
}

mixin BisaNgebut {
  void ngebut() {
    print('Kendaraan sedang ngebut!');
  }
}

class Motor extends Kendaraan {
  @override
  void bunyiKlakson() {
    print('Motor: Tin tin!');
  }
}

class Mobil extends Kendaraan with BisaNgebut {
  @override
  void bunyiKlakson() {
    print('Mobil: Tiiin tiiin!');
  }
}

void main() {
  var produk1 = Produk('Laptop', 5000000);
  produk1.tampilkanProduk();

  print('');

  var produk2 = Produk.gratis('Promosi');
  produk2.tampilkanProduk();

  print('');

  produk1.harga = 5500000;
  print('Harga setelah diubah: Rp${produk1.harga}');

  print('');

  var motor = Motor();
  motor.bunyiKlakson();

  print('');

  var mobil = Mobil();
  mobil.bunyiKlakson();
  mobil.ngebut();
}