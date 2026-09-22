Stream<String> ambilNotifikasi() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield "Notifikasi ke-$i";
  }
}

Future<void> main() async {
  print("Mulai menerima notifikasi...");

  await for (final notifikasi in ambilNotifikasi()) {
    print(notifikasi);
  }

  print("Semua notifikasi selesai.");
}