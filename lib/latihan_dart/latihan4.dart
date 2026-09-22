abstract class Kendaraan {
  void bunyiKlakson();
}

class Motor extends Kendaraan {
  @override
  void bunyiKlakson() {
    print("Motor: Tin tin!");
  }
}

mixin BisaNgebut {
  void ngebut() {
    print("Kendaraan sedang ngebut!");
  }
}

class Mobil extends Kendaraan with BisaNgebut {
  @override
  void bunyiKlakson() {
    print("Mobil: Tiiin tiiin!");
  }
}

void main() {
  var motor = Motor();
  var mobil = Mobil();

  motor.bunyiKlakson();

  mobil.bunyiKlakson();
  mobil.ngebut();
}