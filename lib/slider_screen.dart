import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderScreen extends StatefulWidget {
  const CarouselSliderScreen({Key? key}) : super(key: key);

  @override
  State<CarouselSliderScreen> createState() => _CarouselSliderScreenState();
}

class _CarouselSliderScreenState extends State<CarouselSliderScreen> {
  int index = 0;
  CarouselController carouselController = CarouselController();

  List sliderList = [
    {
      "image": "assets/images/first.png",
      "title": "MEET YOUR COACH START YOUR JOURNEY",
    },
    {
      "image": "assets/images/second.png",
      "title": "CREATE A WORKOUT PLAN TO STAY FIT",
    },
    {
      "image": "assets/images/third.png",
      "title": "ACTION IS THE KEY TO ALL SUCCESS",
    },
    {
      "image": "assets/images/second.png",
      "title": "CREATE A WORKOUT PLAN TO STAY FIT",
    },
    {
      "image": "assets/images/third.png",
      "title": "ACTION IS THE KEY TO ALL SUCCESS",
    },
    {
      "image": "assets/images/second.png",
      "title": "CREATE A WORKOUT PLAN TO STAY FIT",
    },
    {
      "image": "assets/images/third.png",
      "title": "ACTION IS THE KEY TO ALL SUCCESS",
    },
    {
      "image": "assets/images/second.png",
      "title": "CREATE A WORKOUT PLAN TO STAY FIT",
    },
    {
      "image": "assets/images/third.png",
      "title": "ACTION IS THE KEY TO ALL SUCCESS",
    },
    {
      "image": "assets/images/second.png",
      "title": "CREATE A WORKOUT PLAN TO STAY FIT",
    },
    {
      "image": "assets/images/third.png",
      "title": "ACTION IS THE KEY TO ALL SUCCESS",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          CarouselSlider(
            items: sliderList
                .map(
                  (item) => Container(
                    color: Colors.red,
                    height: height * .55,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 380,
                          width: width,
                          child: Image.asset(
                            sliderList[index]["image"],
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(height: 60),
                        Text(
                          sliderList[index]["title"],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: text * 20,
                            fontFamily: 'IntegralCF',
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                )
                .toList(),
            carouselController: carouselController,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: false,
              height: height * 0.75,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                this.index = index;
                setState(() {});
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: sliderList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => carouselController.animateToPage(entry.key),
                child: Container(
                  width: 18.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    color: (Colors.white).withOpacity(
                      index == entry.key ? 0.9 : 0.4,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
