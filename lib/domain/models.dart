import 'package:flutter/material.dart';

class ChatModel {
  String message;
  bool withCategory;

  ChatModel({
    required this.message,
    this.withCategory = false,
  });
}

class CategoryModel {
  final String image, categoryName;
  final int numOfExperts;

  const CategoryModel(
      {required this.image,
      required this.categoryName,
      required this.numOfExperts});
}

class RecommendedExpertModel {
  String name, description, img;
  double rating;
  bool isLoved;

  RecommendedExpertModel(
      {required this.name,
      required this.description,
      required this.img,
      required this.rating,
      this.isLoved = false});
}
