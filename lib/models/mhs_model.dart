// To parse this JSON data, do
//
//     final mahasiswaModel = mahasiswaModelFromJson(jsonString);

import 'dart:convert';

List<MahasiswaModel> mahasiswaModelFromJson(String str) =>
    List<MahasiswaModel>.from(
        json.decode(str).map((x) => MahasiswaModel.fromJson(x)));

String mahasiswaModelToJson(List<MahasiswaModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MahasiswaModel {
  String id;
  String nama;
  String nim;
  Prodi prodi;
  Agama agama;
  JnsKel jnsKel;
  String alamat;
  String asalSekolah;
  String tahun;
  String tempatLahir;
  DateTime tanggalLahir;

  MahasiswaModel({
    required this.id,
    required this.nama,
    required this.nim,
    required this.prodi,
    required this.agama,
    required this.jnsKel,
    required this.alamat,
    required this.asalSekolah,
    required this.tahun,
    required this.tempatLahir,
    required this.tanggalLahir,
  });

  factory MahasiswaModel.fromJson(Map<String, dynamic> json) => MahasiswaModel(
        id: json["id"],
        nama: json["nama"],
        nim: json["nim"],
        prodi: prodiValues.map[json["prodi"]]!,
        agama: agamaValues.map[json["agama"]]!,
        jnsKel: jnsKelValues.map[json["jns_kel"]]!,
        alamat: json["alamat"],
        asalSekolah: json["asal_sekolah"],
        tahun: json["tahun"],
        tempatLahir: json["tempat_lahir"],
        tanggalLahir: DateTime.parse(json["tanggal_lahir"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "nim": nim,
        "prodi": prodiValues.reverse[prodi],
        "agama": agamaValues.reverse[agama],
        "jns_kel": jnsKelValues.reverse[jnsKel],
        "alamat": alamat,
        "asal_sekolah": asalSekolah,
        "tahun": tahun,
        "tempat_lahir": tempatLahir,
        "tanggal_lahir":
            "${tanggalLahir.year.toString().padLeft(4, '0')}-${tanggalLahir.month.toString().padLeft(2, '0')}-${tanggalLahir.day.toString().padLeft(2, '0')}",
      };
}

enum Agama { ISLAM, PROTESTAN, KATOLIK }

final agamaValues = EnumValues({
  "Islam": Agama.ISLAM,
  "Katolik": Agama.KATOLIK,
  "Protestan": Agama.PROTESTAN
});

enum JnsKel { LAKI_LAKI, PEREMPUAN }

final jnsKelValues =
    EnumValues({"Laki-Laki": JnsKel.LAKI_LAKI, "Perempuan": JnsKel.PEREMPUAN});

enum Prodi { TEKNIK_INFORMATIKA }

final prodiValues =
    EnumValues({"Teknik Informatika": Prodi.TEKNIK_INFORMATIKA});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
