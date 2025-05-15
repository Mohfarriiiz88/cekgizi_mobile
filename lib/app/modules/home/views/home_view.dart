import 'package:cekgizi_mobile/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cekgizi_mobile/tema.dart';
import 'package:cekgizi_mobile/app/widget/button.dart';
import 'package:cekgizi_mobile/app/widget/CustomNavbar.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  final controller = Get.put(HomeController()); // opsional

  void _onNavTap(int index) {
    setState(() {
      selectedIndex = index;

      // Opsional: Navigasi ke halaman lain jika ingin
      if (index == 2) {
        Get.toNamed(Routes.PROFIL);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeView'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('HomeView is working', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 24),
            Button(
              w: 100,
              h: 44,
              fungsi: () => Get.toNamed(Routes.PROFIL),
              nama: "Ayo",
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavbar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
