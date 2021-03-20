import 'package:flutter/material.dart';

List PopularProductsList = [
  PopularProductsPage(
    imgUrl:
        "https://cdn.pixabay.com/photo/2017/09/06/12/05/perfume-2721147__480.jpg",
    name0: "VALENTINO",
    value1: "100 ml",
    price: 180,
  ),
  PopularProductsPage(
    imgUrl:
        "https://cdn.pixabay.com/photo/2017/09/06/12/05/perfume-2721147__480.jpg",
    name0: "VALENTINO",
    value1: "100 ml",
    price: 180,
  ),
  PopularProductsPage(
    imgUrl:
        "https://cdn.pixabay.com/photo/2017/09/06/12/05/perfume-2721147__480.jpg",
    name0: "VALENTINO",
    value1: "100 ml",
    price: 180,
  ),
  PopularProductsPage(
    imgUrl:
        "https://cdn.pixabay.com/photo/2017/09/06/12/05/perfume-2721147__480.jpg",
    name0: "VALENTINO",
    value1: "100 ml",
    price: 180,
  ),
];

class PopularProductsPage extends StatelessWidget {
  final String imgUrl;
  final String name0;
  final String value1;
  final int price;

  const PopularProductsPage({this.imgUrl, this.name0, this.value1, this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 20.0, left: 10.0),
          child: Container(
            height: 150.0,
            width: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey[200],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.5),
                            offset: Offset(0.0, 4.0))
                      ],
                      image: DecorationImage(
                          image: NetworkImage(imgUrl), fit: BoxFit.cover)),
                ),
                //  SizedBox(width: 10.0,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name0,
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(value1),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(color: Colors.green),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text("\$$price"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
