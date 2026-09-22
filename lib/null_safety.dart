void main() {
  String? nama;

  print(nama ?? "Tanpa Nama");

  nama ??= "Fabi Faharudin Faiz";

  print(nama);
  print(nama?.length);

  late String token;
  token = "abc123";

  print(token);

  String? input = "Flutter";
  print(input!.toUpperCase());
}