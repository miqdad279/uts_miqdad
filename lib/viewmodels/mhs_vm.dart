import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/mhs_model.dart';

class UserViewModel {
  Future<List<MahasiswaModel>> getMahasiswa() async {
    final response = await http.get(Uri.parse(
        'http://rismayana.diary-project.com/bio.php?prodi=Teknik Informatika'));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      return jsonData.map((data) => MahasiswaModel.fromJson(data)).toList();
    } else {
      throw Exception('Failed to fetch bio data');
    }
  }
}
