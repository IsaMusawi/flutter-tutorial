import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget{
  ProductBox({Key? key, required this.name, this.description, this.price, this.image})
    : super(key: key);
  final String name;
  final String? description;
  final int? price;
  final String? image;

  final defaultImage = "images/no_image_available.png";

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(2), height: 120, child: Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          Expanded(child: Image.asset(image ?? defaultImage))
          , Expanded(
            child: Container(
              padding: EdgeInsets.all(5), child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
                Text(description ?? ''),
                Text("Price : " + (price.toString() ?? '0')),
              ],
            ),
          )
        )
      ],
      ),
    ),
    );
  }
}