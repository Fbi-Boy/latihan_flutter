void main() {
  // Variabel
  var nama = "Fabi";
  final kota = "Jember";
  const tahun = 2026;

  // Tipe data
  int umur = 20;
  double tinggi = 170.5;
  String jurusan = "Teknik Informatika";
  bool mahasiswaAktif = true;

  print("=== DART FUNDAMENTALS ===");
  print("Nama: $nama");
  print("Kota: $kota");
  print("Tahun: $tahun");
  print("Umur: $umur");
  print("Tinggi: $tinggi");
  print("Jurusan: $jurusan");
  print("Mahasiswa Aktif: $mahasiswaAktif");

  // Operator
  int nilai1 = 80;
  int nilai2 = 20;

  print("\n=== OPERATOR ===");
  print("Penjumlahan: ${nilai1 + nilai2}");
  print("Pengurangan: ${nilai1 - nilai2}");
  print("Perkalian: ${nilai1 * nilai2}");
  print("Pembagian: ${nilai1 / nilai2}");
  print("Apakah nilai1 lebih besar? ${nilai1 > nilai2}");

  // Percabangan
  print("\n=== PERCABANGAN ===");

  int nilai = 85;

  if (nilai >= 90) {
    print("Predikat: A");
  } else if (nilai >= 80) {
    print("Predikat: B");
  } else {
    print("Predikat: C");
  }

  // Perulangan
  print("\n=== PERULANGAN ===");

  for (int i = 1; i <= 5; i++) {
    print("Perulangan ke-$i");
  }
}