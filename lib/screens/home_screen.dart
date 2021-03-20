import 'package:flutter/material.dart';
import 'package:perfume_shop_flutter_app/Animation/Fade_animation.dart';
import 'package:perfume_shop_flutter_app/data_page/featured_collection_data_screen.dart';
import 'package:perfume_shop_flutter_app/data_page/popular_products_data_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.0,
              ),
              FadeAnimation(
                1.0,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                          onPressed: () {}),
                      Row(
                        children: [
                          Container(
                            height: 60.0,
                            width: 60.0,
                            child: Stack(
                              children: [
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
                                Positioned(
                                  right: 5.0,
                                  top: 3.0,
                                  child: Container(
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green),
                                  ),
                                ),
                              ],
                            ),
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
                1.0,
                Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Parfume",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      Row(
                        children: [
                          Text(
                            "Makers",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          Text(
                            "1890",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              FadeAnimation(
                1.1,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Featured",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("Collection", style: TextStyle(fontSize: 17.0)),
                        ],
                      ),
                      Container(
                        height: 30.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                            child: Text(
                          "see all >",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              FadeAnimation(
                1.2,
                Container(
                  height: 400.0,
                  width: double.infinity,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: FeatureData.length,
                    itemBuilder: (context, index) {
                      return FeatureData[index];
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              FadeAnimation(
                1.1,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Popular",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Products",
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ],
                      ),
                      Container(
                        height: 30.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                            child: Text(
                          "see all >",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              FadeAnimation(
                1.2,
                Container(
                  height: 300.0,
                  width: double.infinity,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: PopularProductsList.length,
                    itemBuilder: (context, index) {
                      return PopularProductsList[index];
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
