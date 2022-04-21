import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id, width, height;
  final Color color;
  Product({
    required this.height,
    required this.width,
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      height: 20,
      width: 20,
      id: 1,
      title: "Short Trip",
      price: 80,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color.fromARGB(255, 211, 132, 152)),
  Product(
      height: 20,
      width: 20,
      id: 2,
      title: "Long Trip",
      price: 100,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color.fromARGB(255, 132, 211, 162)),
  Product(
      height: 20,
      width: 20,
      id: 3,
      title: "Business",
      price: 95,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      height: 20,
      width: 20,
      id: 4,
      title: "Kids",
      price: 85,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color.fromARGB(255, 191, 182, 247)),
  Product(
      height: 200,
      width: 20,
      id: 5,
      title: "Soft Material",
      price: 80,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color.fromARGB(255, 188, 243, 247)),
  Product(
    height: 20,
    width: 20,
    id: 6,
    title: "2 people",
    price: 95,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color.fromARGB(255, 232, 238, 149),
  ),
];

String dummyText =
    "Our suitcases are a new vision of how to travel safely. Besides the fact that they can only be opened with the owner's fingerprint, they come with a gps tracking system available from the application to which only the owner has access. Classic plastic wheels have been removed, now they are made of rubber and are much easier to control. The handle can be adjusted on an infinite number of levels, thus being comfortable for any person.";
