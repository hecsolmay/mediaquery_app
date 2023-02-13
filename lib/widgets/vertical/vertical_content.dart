import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:mediaquery_app/widgets/appbars/vertical_appbar.dart';
import 'package:mediaquery_app/widgets/list_img.dart';

class VerticalContent extends StatelessWidget {
  const VerticalContent({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.yellow.shade100,
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              "Carusel",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            BannerCarousel(
              banners: listBanners,
              customizedIndicators: const IndicatorModel.animation(
                  width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
              height: 120,
              activeColor: Colors.amberAccent,
              disableColor: Colors.white,
              animation: true,
              borderRadius: 10,
              width: 250,
              indicatorBottom: false,
            ),
            const VerticalAppBar(),
            const SizedBox(height: 10),
            Container(
              height: 400,
              width: 250,
              color: Colors.blue.shade100,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    color: Colors.green.shade100,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Titulo de Producto",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const SizedBox(
                              width: 80,
                              child: Text(
                                "Esse reprehenderit anim reprehenderit elit anim elit dolor.",
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("Comprar"),
                                ),
                              ],
                            )
                          ],
                        ),
                        Image.asset(
                          "assets/pikachu.jpg",
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProvisionalCard extends StatelessWidget {
  const ProvisionalCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
          child: const Text("Hola"),
        ),
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
          child: const Text("Hola"),
        ),
      ],
    );
  }
}
