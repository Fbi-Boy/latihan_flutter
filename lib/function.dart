int kalikanDua(int angka) {
  return angka * 2;
}

int tambah(int a, int b) => a + b;

void tampilBiodata({required String nama, int umur = 0}) {
  print("$nama, $umur tahun");
}

String sapa(String nama, [String salam = "Halo"]) {
  return "$salam, $nama!";
}

void main() {
  print("Hasil kalikanDua: ${kalikanDua(5)}");
  print("Hasil tambah: ${tambah(10, 5)}");

  tampilBiodata(nama: "Fabi Faharudin Faiz", umur: 20);

  print(sapa("Fabi"));
  print(sapa("Fabi", "Selamat datang"));
}