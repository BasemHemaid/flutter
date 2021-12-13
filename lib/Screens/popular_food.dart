import 'package:flutter/material.dart';
class PopularFood extends StatefulWidget {
  const PopularFood({Key? key}) : super(key: key);
  @override
  _PopularFoodState createState() => _PopularFoodState();
}
class _PopularFoodState extends State<PopularFood> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Catogery_foods.length,
          itemBuilder: (ctx, index) {
            return Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              margin: const EdgeInsets.only(left: 10.0, top: 10.0,bottom: 350,right: 10.0),
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withAlpha(100), blurRadius: 10.0),
                  ]),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(12.5),
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 220,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: InkWell(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        width: double.infinity,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(Catogery_foods[index]["image"]),
                          ),
                        ),
                      ),
                      onTap: (){},
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          Catogery_foods[index]["brand"],
                          style: const TextStyle(
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
                            margin:
                                const EdgeInsets.only(left: 20.0, top: 7.0),
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
                            child: Text(
                              "${Catogery_foods[index]["time"]} mins",
                              style: const TextStyle(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(left: 20.0, top: 7.0),
                        child: Text(
                          Catogery_foods[index]["name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 15.0, top: 7.0, right: 10.0),
                        child: Text(
                          "Price: ${Catogery_foods[index]["price"]} EGP",
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, left: 15.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5.0),
                          child: const Icon(
                            Icons.local_offer_rounded,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "${Catogery_foods[index]["offer"]}% off selected items",
                          style: const TextStyle(
                              color: Colors.red, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
