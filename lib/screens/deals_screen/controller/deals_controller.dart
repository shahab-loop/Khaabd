import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/modal/static_model.dart';

class DealsController extends GetxController {
  var selectedCategory = "Deals".obs;
  final List<RestaurantDishModel> dishes = [
    RestaurantDishModel(
      restaurantName: "Cheesious",
      dishName: "Cheesy",
      imagePath: Assets.images.delicious.path,
      price: 7,
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
    RestaurantDishModel(
      restaurantName: "Cheesious",
      dishName: "Cheesy",
      imagePath: Assets.images.biryani.path,
      price: 7,
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
    RestaurantDishModel(
      restaurantName: "Tea Time Café",
      dishName: "High Tea",
      imagePath: Assets.images.burger.path,
      price: 9,
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
    RestaurantDishModel(
      restaurantName: "Spicy Corner",
      dishName: "Biryani",
      imagePath: Assets.images.hotburger.path,
      price: 5,
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
    RestaurantDishModel(
      restaurantName: "Burger Hub",
      dishName: "Double",
      imagePath: Assets.images.delicious.path,
      price: 9,
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
    RestaurantDishModel(
      restaurantName: "Chilli Flame",
      dishName: "Hot Wings",
      imagePath: Assets.images.biryani.path,
      price: 8,
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
  ];
  final dealsList = <DealItem>[
    DealItem(
      image: Assets.images.delicious.path,
      title: "Food Deal 1",
      restaurantName: "Cheesious",
      dishName: "Delicious Meal",
      price: 1200,
    ),
    DealItem(
      image: Assets.images.biryani.path,
      title: "Food Deal 2",
      restaurantName: "Cheesious",
      dishName: "Biryani Special",
      price: 1000,
    ),
    DealItem(
      image: Assets.images.delicious.path,
      title: "Food Deal 3",
      restaurantName: "Cheesious",
      dishName: "Premium Deal",
      price: 1500,
    ),
    DealItem(
      image: Assets.images.biryani.path,
      title: "Food Deal 4",
      restaurantName: "Cheesious",
      dishName: "Spicy Biryani",
      price: 1100,
    ),
  ].obs;

  void changeCategory(String category) {
    selectedCategory.value = category;
  }

  void openDeal(int index) {
    print("Deal tapped: ${dealsList[index].title}");
  }
}

class DealItem {
  final String image;
  final String title;
  final String restaurantName;
  final String dishName;
  final int price;

  DealItem({
    required this.image,
    required this.title,
    required this.restaurantName,
    required this.dishName,
    required this.price,
  });
}

class DishModel {
  final String restaurantName;
  final String dishName;
  final int price;
  final String image;

  DishModel({
    required this.restaurantName,
    required this.dishName,
    required this.price,
    required this.image,
  });
}

