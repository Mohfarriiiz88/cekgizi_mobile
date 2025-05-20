import 'package:cekgizi_mobile/tema.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});
  @override
  Widget build(BuildContext context) {
    Widget bagianProfil() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/icon.png"),
                      ),
                    ),
                  ),
                  SizedBox(width: 18),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Selamat datang",
                        style: hitamStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        "Moh Fariz",
                        style: hitamStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/notif.png")),
              ),
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,

        height: 141,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: warnaMerah,
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pindai\nMakananmu\nCek Gizimu",
                    style: hitamStyle.copyWith(fontSize: 20, fontWeight: black),
                  ),
                  Text(
                    "Hidup sehat mulai sekarang",
                    style: hitamStyle.copyWith(fontSize: 12, fontWeight: light),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              padding: EdgeInsets.only(top: 10),
              height: 141,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/2.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [bagianProfil(), header()]),
          ),
        ),
      ),
    );
  }
}
