import 'package:flutter/material.dart';
import 'package:perfume_shop_flutter_app/Animation/Fade_animation.dart';

class DetailsPage extends StatelessWidget {
  final String imgUrl;
  final String name0;
  final String name1;

  const DetailsPage(this.imgUrl, this.name0, this.name1);
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeAnimation(
                      1.0,
                      TextButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                          label: Text("Back",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0))),
                    ),
                    Container(
                      height: 60.0,
                      width: 60.0,
                      child: Stack(
                        children: [
                          FadeAnimation(
                            1.0,
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black38, width: 2.0),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 30.0,
            ),
            FadeAnimation(
              1.1,
              Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120.0),
                    bottomRight: Radius.circular(120.0),
                  ),
                  color: Colors.orange,
                  image: DecorationImage(
                      image: NetworkImage(imgUrl), fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.1,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name0,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          name1,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          "\$248",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.2,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 100.0,
                  width: double.infinity,
                  child: Text(
                    "POEME WOMEN is the embodiment of a black that reveals on femininitiy. A radical creation contemporary expression of a"
                    " magnetic sensuality told in a modern oriental fragrance with luminous notes.",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.2,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Details"),
                        SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 5.0,
                                  width: 5.0,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("200 ml"),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 5.0,
                                  width: 5.0,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Alcohol free 100%"),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Quantity"),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text("01"),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            FadeAnimation(
              1.2,
              Container(
                height: 100.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add to cart",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.shopping_basket_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
