import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscountCard extends StatelessWidget {
   DiscountCard({Key? key}) : super(key: key);

   Color kPrimaryColor = const Color(0xFFFFC61F);
   Color ksecondaryColor = const Color(0xFFB5BFD0);
   Color kTextColor = const Color(0xFF50505D);
   Color kTextLightColor = const Color(0xFF6A727D);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: const Text(
              "Offers & Discounts",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          InkWell(
            child: Container(
              margin:const EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image:const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),
                ),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF961F).withOpacity(0.7),
                      kPrimaryColor.withOpacity(0.7),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SvgPicture.asset("assets/icons/macdonalds.svg"),
                      ),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(
                                text: "Get Discount of \n",
                                style: TextStyle(fontSize: 16),
                              ),
                              TextSpan(
                                text: "30% \n",
                                style: TextStyle(
                                  fontSize: 43,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                "at MacDonald's on your first order & Instant cashback",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
