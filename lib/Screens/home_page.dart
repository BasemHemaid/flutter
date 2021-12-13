import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bottom_nav_bar.dart';
import 'discount.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List Catogery_foods = [
    {
      "name": "Burger",
      "brand": "Boom Burger",
      "price": "60.00",
      "time": "30",
      "image": "assets/images/burger.png",
      "offer": "50"
    },
    {
      "name": "Pizza",
      "brand": "Granny's",
      "price": "50.00",
      "time": "30",
      "image": "assets/images/pizza.png",
      "offer": "40"
    },
    {
      "name": "Mix Land Crepe",
      "brand": "KRAPAWY",
      "price": "47.00",
      "time": "25",
      "image": "assets/images/crepe.png",
      "offer": "10"
    },
    {
      "name": "Chicken shawarma",
      "brand": "Shawerma Syria",
      "price": "32.00",
      "time": "25",
      "image": "assets/images/shawarma.png",
      "offer": "30"
    },
    {
      "name": "Club Sandwich",
      "brand": "Bolio Bero",
      "price": "70.00",
      "time": "25",
      "image": "assets/images/sandwish.png",
      "offer": "25"
    },
    {
      "name": "Diablo Fries",
      "brand": "McDonald's",
      "price": "15.00",
      "time": "5",
      "image": "assets/images/fries.png",
      "offer": "10"
    },
    {
      "name": "chocolate cake",
      "brand": "Bonbon",
      "price": "45.00",
      "time": "10",
      "image": "assets/images/dessert.png",
      "offer": "5"
    },
  ];

  Widget ListFood(image, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: SvgPicture.asset(
            image,
            color: const Color.fromRGBO(194, 194, 203, 1),
          ),
          onPressed: () {},
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: const TextStyle(
              color: const Color.fromRGBO(194, 194, 203, 1),
            ),
          ),
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Column(
              children: [
                Container(
                  color: const Color.fromRGBO(10, 135, 145, 1),
                  width: double.infinity,
                  height:  MediaQuery.of(context).size.height*20/44 ,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 15, top: 10),
                              child: const Icon(
                                Icons.location_on,
                                color: Color.fromRGBO(194, 194, 203, 1),
                              )),
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.only(left: 5, top: 10),
                            child: const Text(
                              "Delivering to",
                              style: TextStyle(
                                color: Color.fromRGBO(194, 194, 203, 1),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10, top: 10),
                            child: const Text(
                              "HOME",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromRGBO(251, 168, 60, 1)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Color.fromRGBO(251, 168, 60, 1)),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: InkWell(
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search...',
                                      border: InputBorder.none,
                                      icon: Icon(Icons.search),
                                      suffixIcon: IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.menu,
                                          color:
                                              Color.fromRGBO(251, 168, 60, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            ListFood("assets/icons/burger.svg","Burger"),
                            ListFood("assets/icons/crepe.svg","Crepe"),
                            ListFood("assets/icons/pizza.svg","Pizza"),
                            ListFood("assets/icons/dessert.svg","Dessert"),
                            ListFood("assets/icons/drinks.svg","Drinks"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                DiscountCard(),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: const Text(
                          "Popular Food",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                      InkWell(
                        child: const Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(251, 168, 60, 1)),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            margin: const EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width*4/5,
                            height: MediaQuery.of(context).size.width*7/10,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withAlpha(100),
                                      blurRadius: 10.0),
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(12.5),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height*10/33,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    //color: Colors.red[100],
                                  ),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/burger.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(left: 20.0),
                                      child: const Text(
                                        "Boom Burger",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 20.0, top: 7.0),
                                          child: const Icon(
                                            Icons.timer,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 5.0, top: 7.0, right: 15.0),
                                          child: const Text(
                                            "30 mins",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(
                                          left: 20.0, top: 7.0),
                                      child: const Text(
                                        "Burger",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15.0, top: 7.0, right: 10.0),
                                      child: const Text(
                                        "Price: 60.0 EGP",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, left: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 5.0),
                                        child: const Icon(
                                          Icons.local_offer_rounded,
                                          color: Colors.red,
                                        ),
                                      ),
                                      const Text(
                                        "30% off selected items",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 17),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},  /*
                           دي ال widget بتاعت اول صوره
                          */
                        ),
                        InkWell(
                          child: Container(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            margin: const EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width*4/5,
                            height: MediaQuery.of(context).size.width*7/10,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withAlpha(100),
                                      blurRadius: 10.0),
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(12.5),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height*10/33,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    //color: Colors.red[100],
                                  ),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    width: double.infinity,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/shawarma.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(left: 20.0),
                                      child: const Text(
                                        "Shawerma Syria",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 20.0, top: 7.0),
                                          child: const Icon(
                                            Icons.timer,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 5.0, top: 7.0, right: 15.0),
                                          child: const Text(
                                            "25 mins",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(
                                          left: 20.0, top: 7.0),
                                      child: const Text(
                                        "Chicken shawarma",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15.0, top: 7.0, right: 10.0),
                                      child: const Text(
                                        "Price: 32.0 EGP",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, left: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 5.0),
                                        child: const Icon(
                                          Icons.local_offer_rounded,
                                          color: Colors.red,
                                        ),
                                      ),
                                      const Text(
                                        "25% off selected items",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 17),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},/*
                           دي ال widget بتاعت تاني صوره
                          */
                        ),
                        InkWell(
                          child: Container(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            margin: const EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width*4/5,
                            height: MediaQuery.of(context).size.width*7/10,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withAlpha(100),
                                      blurRadius: 10.0),
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(12.5),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height*10/33,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    //color: Colors.red[100],
                                  ),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    width: double.infinity,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/pizza.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(left: 20.0),
                                      child: const Text(
                                        "Granny's",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 20.0, top: 7.0),
                                          child: const Icon(
                                            Icons.timer,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 5.0, top: 7.0, right: 15.0),
                                          child: const Text(
                                            "40 mins",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(
                                          left: 20.0, top: 7.0),
                                      child: const Text(
                                        "Chicken Bites Pizza",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15.0, top: 7.0, right: 10.0),
                                      child: const Text(
                                        "Price: 69.0 EGP",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, left: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 5.0),
                                        child: const Icon(
                                          Icons.local_offer_rounded,
                                          color: Colors.red,
                                        ),
                                      ),
                                      const Text(
                                        "10% off selected items",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 17),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},
                          /*
                           دي ال widget بتاعت تالت صوره
                          */
                        ),
                        InkWell(
                          child: Container(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            margin: const EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 10.0),
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width*4/5,
                            height: MediaQuery.of(context).size.width*7/10,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withAlpha(100),
                                      blurRadius: 10.0),
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(12.5),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height*10/33,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    //color: Colors.red[100],
                                  ),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    width: double.infinity,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/sandwish.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(left: 20.0),
                                      child: const Text(
                                        "Bolio Bero",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 20.0, top: 7.0),
                                          child: const Icon(
                                            Icons.timer,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 5.0, top: 7.0, right: 15.0),
                                          child: const Text(
                                            "35 mins",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(
                                          left: 20.0, top: 7.0),
                                      child: const Text(
                                        "Club Sandwich",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15.0, top: 7.0, right: 10.0),
                                      child: const Text(
                                        "Price: 70.0 EGP",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, left: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 5.0),
                                        child: const Icon(
                                          Icons.local_offer_rounded,
                                          color: Colors.red,
                                        ),
                                      ),
                                      const Text(
                                        "25% off selected items",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 17),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},
                          /*
                           دي ال widget بتاعت رابع صوره
                          */
                        ),
                        InkWell(
                          child: Container(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            margin: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width*4/5,
                            height: MediaQuery.of(context).size.width*7/10,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withAlpha(100),
                                      blurRadius: 10.0),
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(12.5),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height*10/33,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    //color: Colors.red[100],
                                  ),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    width: double.infinity,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/crepe.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(left: 20.0),
                                      child: const Text(
                                        "KRAPAWY",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 20.0, top: 7.0),
                                          child: const Icon(
                                            Icons.timer,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 5.0, top: 7.0, right: 15.0),
                                          child: const Text(
                                            "25 mins",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(
                                          left: 20.0, top: 7.0),
                                      child: const Text(
                                        "Mix Land Crepe",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15.0, top: 7.0, right: 10.0),
                                      child: const Text(
                                        "Price: 47.0 EGP",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, left: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 5.0),
                                        child: const Icon(
                                          Icons.local_offer_rounded,
                                          color: Colors.red,
                                        ),
                                      ),
                                      const Text(
                                        "15% off selected items",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 17),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},
                          /*
                           دي ال widget بتاعت خامس صوره
                          */
                        ),
                        InkWell(
                          child: Container(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            margin: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width*4/5,
                            height: MediaQuery.of(context).size.width*7/10,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withAlpha(100),
                                      blurRadius: 10.0),
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(12.5),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height*10/33,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    //color: Colors.red[100],
                                  ),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    width: double.infinity,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/fries.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(left: 20.0),
                                      child: const Text(
                                        "McDonald's",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 20.0, top: 7.0),
                                          child: const Icon(
                                            Icons.timer,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 5.0, top: 7.0, right: 15.0),
                                          child: const Text(
                                            "5 mins",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(
                                          left: 20.0, top: 7.0),
                                      child: const Text(
                                        "Diablo Fries",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15.0, top: 7.0, right: 10.0),
                                      child: const Text(
                                        "Price: 15 EGP",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, left: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 5.0),
                                        child: const Icon(
                                          Icons.local_offer_rounded,
                                          color: Colors.red,
                                        ),
                                      ),
                                      const Text(
                                        "10% off selected items",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 17),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},
                          /*
                           دي ال widget بتاعت سادس صوره
                          */
                        ),
                        InkWell(
                          child: Container(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            margin: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width*4/5,
                            height: MediaQuery.of(context).size.width*7/10,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withAlpha(100),
                                      blurRadius: 10.0),
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(12.5),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height*10/33,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    //color: Colors.red[100],
                                  ),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    width: double.infinity,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/dessert.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(left: 20.0),
                                      child: const Text(
                                        "Bonbon",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 20.0, top: 7.0),
                                          child: const Icon(
                                            Icons.timer,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: const EdgeInsets.only(
                                              left: 5.0, top: 7.0, right: 15.0),
                                          child: const Text(
                                            "15 mins",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(
                                          left: 20.0, top: 7.0),
                                      child: const Text(
                                        "chocolate cake",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15.0, top: 7.0, right: 10.0),
                                      child: const Text(
                                        "Price: 45.0 EGP",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, left: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 5.0),
                                        child: const Icon(
                                          Icons.local_offer_rounded,
                                          color: Colors.red,
                                        ),
                                      ),
                                      const Text(
                                        "5% off selected items",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 17),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},
                          /*
                           دي ال widget بتاعت سابع صوره
                          */
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
