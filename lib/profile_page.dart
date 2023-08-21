import 'package:flutter/material.dart';

import 'viewmodels/mhs_vm.dart';
import 'models/mhs_model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List dataUser = [];

  void getDataMhs() {
    UserViewModel().getMahasiswa().then((value) {
      setState(() {
        dataUser = value;
      });
    });
  }

  Widget personDetailCard(MahasiswaModel data) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: const Color(0xffF3F4F8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.lightBlue,
                child: Icon(Icons.person, size: 24),
              ),
              const SizedBox(height: 8),
              Text(
                data.nama,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                data.nim,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                data.prodi.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                data.agama.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                data.jnsKel.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                data.alamat,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                data.asalSekolah,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                data.tahun,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                data.tempatLahir,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                data.tanggalLahir.timeZoneName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getDataMhs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, i) {
          if (i == dataUser.length) {
            return buildLogoutButton();
          } else {
            return personDetailCard(dataUser[i]);
          }
        },
        // ignore: unnecessary_null_comparison
        itemCount: dataUser == null ? 0 : dataUser.length + 1,
      ),
    );
  }

  Widget buildLogoutButton() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 136, 113, 55)),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
          child: const Text("Logout")),
    );
  }
}
