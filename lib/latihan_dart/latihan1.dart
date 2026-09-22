void main() {
  Map<String, String?> mahasiswa = {
    "nama": "Fabi Faharudin Faiz",
    "nim": "E4125XXX",
    "email": null,
  };

  print("Nama  : ${mahasiswa["nama"]}");
  print("NIM   : ${mahasiswa["nim"]}");
  print("Email : ${mahasiswa["email"] ?? "Email belum tersedia"}");
}