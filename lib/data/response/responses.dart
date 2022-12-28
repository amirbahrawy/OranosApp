import 'package:tatware_task/domain/models.dart';
import 'package:tatware_task/presentation/resources/strings_manager.dart';

class Responses {
  static List<CategoryModel> getCategories() {
    return const [
      CategoryModel(
          image:
              'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762',
          categoryName: AppStrings.informationTechnology,
          numOfExperts: 23),
      CategoryModel(
          image:
              'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762',
          categoryName: AppStrings.supplyChain,
          numOfExperts: 12),
      CategoryModel(
          image:
              'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762',
          categoryName: AppStrings.security,
          numOfExperts: 14),
      CategoryModel(
          image:
              'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762',
          categoryName: AppStrings.humanResource,
          numOfExperts: 8),
      CategoryModel(
          image:
              'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762',
          categoryName: AppStrings.businessResearch,
          numOfExperts: 18),
      CategoryModel(
          image:
              'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762',
          categoryName: AppStrings.supplyChain,
          numOfExperts: 3),
    ];
  }

  static List<RecommendedExpertModel> getRecommendedExperts() {
    return [
      RecommendedExpertModel(
          name: 'Amir Bahrawy',
          description: 'Supply Chain',
          img: 'https://img.freepik.com/free-photo/young-man-sunglasses-with-smartphone-coffee-city_169016-21517.jpg?w=360&t=st=1666763378~exp=1666763978~hmac=9ef29de1bad4359ecaee9b4aefc8e988853e1e0d3ccabc00cf8e0ed8b51dbff0',
          rating: 4.9),
      RecommendedExpertModel(
          name: 'Ahmed Mohamed',
          description: AppStrings.security,
          img: 'https://img.freepik.com/free-photo/young-man-sunglasses-with-smartphone-coffee-city_169016-21517.jpg?w=360&t=st=1666763378~exp=1666763978~hmac=9ef29de1bad4359ecaee9b4aefc8e988853e1e0d3ccabc00cf8e0ed8b51dbff0',
          rating: 3.5),
      RecommendedExpertModel(
          name: 'Mona Ahmed',
          description: AppStrings.informationTechnology,
          img: 'https://img.freepik.com/free-photo/young-man-sunglasses-with-smartphone-coffee-city_169016-21517.jpg?w=360&t=st=1666763378~exp=1666763978~hmac=9ef29de1bad4359ecaee9b4aefc8e988853e1e0d3ccabc00cf8e0ed8b51dbff0',
          rating:5.0)

    ];
  }
}
