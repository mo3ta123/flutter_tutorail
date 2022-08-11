import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '/widgets/categorie_tile.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static const list = [
    {
      'title': 'Clothes',
      'imageUrl':
          'https://c4.wallpaperflare.com/wallpaper/246/739/689/digital-digital-art-artwork-illustration-abstract-hd-wallpaper-preview.jpg',
    },
    {
      'title': 'Clothes',
      'imageUrl':
          'https://c4.wallpaperflare.com/wallpaper/246/739/689/digital-digital-art-artwork-illustration-abstract-hd-wallpaper-preview.jpg',
    },
    {
      'title': 'Clothes',
      'imageUrl':
          'https://c4.wallpaperflare.com/wallpaper/246/739/689/digital-digital-art-artwork-illustration-abstract-hd-wallpaper-preview.jpg',
    },
    {
      'title': 'Clothes',
      'imageUrl':
          'https://c4.wallpaperflare.com/wallpaper/246/739/689/digital-digital-art-artwork-illustration-abstract-hd-wallpaper-preview.jpg',
    },
    {
      'title': 'Clothes',
      'imageUrl':
          'https://c4.wallpaperflare.com/wallpaper/246/739/689/digital-digital-art-artwork-illustration-abstract-hd-wallpaper-preview.jpg',
    },
    {
      'title': 'Clothes',
      'imageUrl':
          'https://c4.wallpaperflare.com/wallpaper/246/739/689/digital-digital-art-artwork-illustration-abstract-hd-wallpaper-preview.jpg',
    },
    {
      'title': 'Clothes',
      'imageUrl':
          'https://c4.wallpaperflare.com/wallpaper/246/739/689/digital-digital-art-artwork-illustration-abstract-hd-wallpaper-preview.jpg',
    },
    {
      'title': 'Clothes',
      'imageUrl':
          'https://c4.wallpaperflare.com/wallpaper/246/739/689/digital-digital-art-artwork-illustration-abstract-hd-wallpaper-preview.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 30, 31, 40),
        appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color.fromARGB(255, 30, 31, 40),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 20,
                ),
                onPressed: () {
                  // your method (function),
                },
              ),
            ],
            title: const Center(
              child: Text(
                'Clothes',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              ), // Put icon of your preference.
              onPressed: () {
                // your method (function),
              },
            ),
            bottom: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 44),
              child: const SizedBox(
                height: 44,
                child: TabBar(
                  indicatorColor: Color.fromARGB(255, 239, 54, 81),
                  tabs: [
                    Text(
                      'Women',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Men',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Kids',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              const Button(
                title: "Summer Sale",
                subTitle: "Up to 50% off",
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return CategorieTile(
                      title: list[index]['title'] ?? '',
                      imageUrl: list[index]['imageUrl'] ?? '');
                },
              ),
            ],
          ),
        ));
  }
}
