import 'package:flutter/material.dart';
import 'package:perfume_shop_flutter_app/screens/details_screen.dart';

List FeatureData = [
  FeaturedContainer(
    imgUrl:
        "https://cdn.pixabay.com/photo/2017/03/14/11/41/perfume-2142824__480.jpg",
    name0: "LANCOME",
    name1: "POEME WOMEN",
  ),
  FeaturedContainer(
    imgUrl:
        "https://cdn.pixabay.com/photo/2017/10/03/12/07/bottle-2812214__480.jpg",
    name0: "YVES SAINT",
    name1: "LIBRE PARFUME",
  ),
  FeaturedContainer(
    imgUrl:
        "https://cdn.pixabay.com/photo/2018/03/30/17/34/perfume-3275960__480.jpg",
    name0: "LANCOME",
    name1: "LIBRE PARFUME",
  ),
];

class FeaturedContainer extends StatelessWidget {
  final String imgUrl;
  final String name0;
  final String name1;

  const FeaturedContainer({this.imgUrl, this.name0, this.name1});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    DetailsPage(imgUrl, name0, name1)));
      },
      child: Material(
          child: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            //  color: Colors.grey[300],
            //boxShadow: [BoxShadow(offset: Offset(-4.0, -4.0),color: Colors.black.withOpacity(.2))]
          ),
          height: 360.0,
          width: 260.0,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              //  height: 360.0,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[300],
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0.0, 4.0),
                        color: Colors.black.withOpacity(.4))
                  ]),

              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: NetworkImage(imgUrl), fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    children: [
                      Text(
                        name0,
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        name1,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
