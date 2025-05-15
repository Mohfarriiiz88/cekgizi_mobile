import 'package:flutter/material.dart';
import 'package:cekgizi_mobile/tema.dart';
import 'package:cekgizi_mobile/app/routes/app_pages.dart';
import 'package:cekgizi_mobile/app/widget/CustomNavbar.dart';
import 'package:get/get.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({super.key});

  @override
  State<ProfilView> createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaPutih,
      bottomNavigationBar: CustomNavbar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔲 Jarak atas dari safe area ke header
            const SizedBox(height: 20),

            // 🔠 Header "Profil"
            Center(
              child: Text(
                "Profil",
                style: hitamStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // 🔲 Jarak antara header dan informasi pengguna
            const SizedBox(height: 30),

            // 👤 Informasi pengguna
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/pp2.png'),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Moh. Fariz",
                        style: hitamStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "mohfariz88@gmail.com",
                        style: hitamStyle.copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // 🔲 Jarak antara profil info dan 3 card
            const SizedBox(height: 20),

            // 🟥🟧🟦 3 Card Warna
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 🔴 Card Merah
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: warnaMerah,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          "Umur", // ⬅️ Ganti dengan label sesuai kebutuhan
                          style: hitamStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  // 🟧 Card Oren
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: warnaOren,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          "Tinggi Badan", // ⬅️ Ganti dengan label sesuai kebutuhan
                          style: hitamStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  // 🔵 Card Biru
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: warnaBiru,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          "Berat Badan", // ⬅️ Ganti dengan label sesuai kebutuhan
                          style: hitamStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 🔲 Jarak antara card dan menu section
            const SizedBox(height: 15),

            // ⬇️ Section Menu Account & Settings (tanpa card)
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 🔠 Section Account
                      sectionTitle("Account"),

                      menuItem("assets/nama.png", "Detail Profile", () {
                        Get.toNamed(Routes.DETAIL_PROFILE);
                      }),
                      menuItem("assets/edit.png", "Edit Profile", () {
                        Get.toNamed(Routes.EDIT_PROFILE);
                      }),
                      menuItem("assets/lock.png", "Ubah Password", () {}),

                      const SizedBox(height: 10),

                      // 🔠 Section Settings
                      sectionTitle("Settings"),

                      menuItem("assets/about.png", "Tentang", () {}),
                      menuItem("assets/lonceng.png", "Notifikasi", () {}),
                      menuItem("assets/out.png", "Keluar", () {}),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuItem(String assetPath, String title, [VoidCallback? onTap]) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: Image.asset(
        assetPath,
        width: 22,
        height: 22,
        color: Colors.black87,
      ),
      title: Text(
        title,
        style: hitamStyle.copyWith(fontSize: 13, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 14),
      onTap: onTap,
    );
  }

  Widget sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: hitamStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 14),
      ),
    );
  }
}
