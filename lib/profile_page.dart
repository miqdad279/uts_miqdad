import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_miqdad/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'PROFILE',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xffDDE5E9),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          height: 75,
                          width: 75,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/PP.jpg'),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.circle),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Miqdad Abdillah',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Lengkap',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff404040),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'Miqdad Abdillah',
                        enabled: false,
                        decoration: const InputDecoration(
                            disabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffDDE5E9)))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tanggal Lahir',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff404040),
                        ),
                      ),
                      TextFormField(
                        initialValue: '27 September 2001',
                        enabled: false,
                        decoration: const InputDecoration(
                            disabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffDDE5E9)))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jenis Kelamin',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff404040),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'Laki-Laki',
                        enabled: false,
                        decoration: const InputDecoration(
                            disabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffDDE5E9)))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No. Telp',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff404040),
                        ),
                      ),
                      TextFormField(
                        initialValue: '085794855413',
                        enabled: false,
                        decoration: const InputDecoration(
                            disabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffDDE5E9)))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff404040),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'miqdadabdillah279@gmail.com',
                        enabled: false,
                        decoration: const InputDecoration(
                            disabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffDDE5E9)))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alamat',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff404040),
                        ),
                      ),
                      TextFormField(
                        initialValue:
                            'Jl. Dustira No.1, Baros, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40521',
                        enabled: false,
                        decoration: const InputDecoration(
                            disabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffDDE5E9)))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kartu Kredit',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff404040),
                        ),
                      ),
                      TextFormField(
                          initialValue:
                              'Anda belum menyimpan data Kartu Kredit',
                          style: const TextStyle(color: Color(0xffC7C9D9)),
                          enabled: false,
                          decoration: const InputDecoration(
                              disabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffDDE5E9))))),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 400,
                    height: 55,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: const Color(0xff6531C4)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: Text('Logout',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
