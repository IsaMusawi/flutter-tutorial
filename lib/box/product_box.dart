import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/constant.dart';

class ProductBox extends StatelessWidget{
  const ProductBox({Key? key, required this.name, this.description, this.price, this.image})
    : super(key: key);
  final String name;
  final String? description;
  final int? price;
  final String? image;

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(2), height: 120, child: Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          Expanded(child: Image.asset(image ?? Constant.NoImagePath))
          , Expanded(
            child: Container(
              padding: const EdgeInsets.all(5), child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold),),
                Text(description ?? Constant.EmptyString),
                Text("Price : ${(price ?? Constant.EmptyString).toString()}"),
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