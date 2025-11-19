import 'package:get/get.dart';
import 'package:khaabd/core/app_const/app_const.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/modal/static_model.dart';

class HomeScreenController extends GetxController {
  var selectedItem = "".obs;
  final List<String> items = ["Meat", "Vegetables", "Chicken"];
  var searchText = "".obs;

  final List<SmallContainerModel> offersList = [
    SmallContainerModel(text: "Deals", imagePath: Assets.images.offer.path),
    SmallContainerModel(text: "Offers", imagePath: Assets.images.deal.path),
    SmallContainerModel(text: "High Tea", imagePath: Assets.images.tea.path),
    SmallContainerModel(text: "Hot Drinks", imagePath: Assets.images.deal.path),
    SmallContainerModel(
      text: "Cheesious",
      imagePath: Assets.images.burger.path,
    ),
  ];

  final List<RestaurantDishModel> dishes = [
    RestaurantDishModel(
      restaurantName: "Cheesious",
      dishName: "Cheesy",
      imagePath: Assets.images.delicious.path,
      price: 1000,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
    RestaurantDishModel(
      restaurantName: "Cheesious",
      dishName: "Cheesy",
      imagePath: Assets.images.biryani.path,
      price: 1000,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
    RestaurantDishModel(
      restaurantName: "Tea Time Café",
      dishName: "High Tea",
      imagePath: Assets.images.burger.path,
      price: 1000,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
    RestaurantDishModel(
      restaurantName: "Spicy Corner",
      dishName: "Biryani",
      imagePath: Assets.images.hotburger.path,
      price: 1000,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
    RestaurantDishModel(
      restaurantName: "Burger Hub",
      dishName: "Double",
      imagePath: Assets.images.delicious.path,
      price: 1000,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
    RestaurantDishModel(
      restaurantName: "Chilli Flame",
      dishName: "Hot Wings",
      imagePath: Assets.images.biryani.path,
      price: 1000,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
  ];
  List<RestaurantDishModel> get filteredDishes {
    if (searchText.value.isEmpty) return AppConst.dishes;
    return AppConst.dishes
        .where(
          (dish) =>
              dish.restaurantName.toLowerCase().contains(
                searchText.value.toLowerCase(),
              ) ||
              dish.dishName.toLowerCase().contains(
                searchText.value.toLowerCase(),
              ),
        )
        .toList();
  }
}