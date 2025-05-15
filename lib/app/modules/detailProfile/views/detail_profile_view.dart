import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/detail_profile_controller.dart';
import 'package:cekgizi_mobile/tema.dart';

class DetailProfileView extends StatelessWidget {
  const DetailProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaPutih,
      body: Stack(
        children: [
          // Background profil dengan gambar
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300, // Bisa kamu atur ukurannya
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bgprofil.png'),
                fit: BoxFit.cover, // Bisa kamu ubah ke BoxFit.fill, etc
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),

          // Konten utama
          Column(
            children: [
              SizedBox(height: 100), // Jarak atas
              // Card Profil
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/pp2.png'),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),
              // Card Detail Profile
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 4),
                      ),
                    ],
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildProfileItem(Icons.person, "Nama", "Arda Yudrik M"),
                      SizedBox(height: 16),
                      buildProfileItem(
                        Icons.email,
                        "Email",
                        "ardaku@gmail.com",
                      ),
                      SizedBox(height: 16),
                      buildProfileItem(Icons.phone, "No Telp", "081237237"),
                      SizedBox(height: 16),
                      buildProfileItem(
                        Icons.location_on,
                        "Alamat",
                        "Jl. panggung no 56\nTetangga anin",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildProfileItem(IconData icon, String title, String content) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: Colors.black),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: hitamStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                content,
                style: hitamStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
