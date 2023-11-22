import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({Key? key}) : super(key: key);

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Carousel Slider"),
      ),
      body: Container(
        child: CarouselSlider(
          items: [
            Container(
              child: Image.asset('assets/images/f1.jpeg'),
            ),
            Container(
              child: Image.asset('assets/images/f2.jpeg'),
            ),
            Container(
              child: Image.asset('assets/images/f3.jpeg'),
            ),
            Container(
              child: Image.asset('assets/images/f4.jpeg'),
            ),
            Container(
              child: Image.asset('assets/images/f5.jpeg'),
            )
          ],
          options:CarouselOptions(
            enlargeCenterPage: true,
            height:200,
            autoPlay: true,
            //autoPlayInterval: Duration(milliseconds: 100),
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: Duration(milliseconds: 300),
            viewportFraction: 0.8,
          ),
        ),
      ),
    );
  }
}
