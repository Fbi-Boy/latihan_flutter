Future<String> ambilPesanan() async {
  await Future.delayed(Duration(seconds: 2));
  return "Kopi Susu";
}

Stream<String> ambilNotifikasi() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield "Notifikasi ke-$i";
  }
}

Future<void> main() async {
  print("Mengambil pesanan...");

  final pesanan = await ambilPesanan();
  print("Pesanan: $pesanan");

  print("Menerima notifikasi...");

  await for (final notifikasi in ambilNotifikasi()) {
    print(notifikasi);
  }

  print("Proses selesai");
}