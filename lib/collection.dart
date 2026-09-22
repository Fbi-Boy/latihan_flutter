void main() {
  List<int> nilai = [80, 90, 65, 70, 95];

  var nilaiLulus = nilai.where((n) => n >= 75).toList();

  var predikat = nilai.map((n) {
    return switch (n) {
      >= 90 => "A",
      >= 75 => "B",
      _ => "C",
    };
  }).toList();

  print("Nilai: $nilai");
  print("Nilai lulus: $nilaiLulus");
  print("Predikat: $predikat");
}